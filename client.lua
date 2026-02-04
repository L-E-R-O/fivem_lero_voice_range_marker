local currentMode = 1
local drawToken   = 0

-- Einstellungen (werden aus KVP geladen)
local soundEnabled = true
local notifyEnabled = true

-- Range / Labels
local voiceRanges = {
    [1] = 0.75,
    [2] = 1.5,
    [3] = 3.0,
    [4] = 6.0,
    [5] = 12.0,
    [6] = 24.0
}

local modeLabels = {
    [1] = "Flüstern",
    [2] = "Leise",
    [3] = "Normal",
    [4] = "Laut",
    [5] = "Rufen",
    [6] = "Schreien"
}

-- Kreis Config
local circleWidth    = 0.08
local circleColor    = { 128, 0, 255, 100 }
local scaleFactor    = 1.0
local showMs         = 3000

-- Sound Config
local clickSoundName = "NAV_UP_DOWN"
local clickSoundSet  = "HUD_FRONTEND_DEFAULT_SOUNDSET"

-- Lädt gespeicherte Einstellungen
local function loadPreferences()
    local savedSound = GetResourceKvpString('lero_voice_sound')
    local savedNotify = GetResourceKvpString('lero_voice_notify')
    
    soundEnabled = savedSound ~= 'false'
    notifyEnabled = savedNotify ~= 'false'
end

-- Speichert aktuelle Einstellungen
local function savePreferences()
    SetResourceKvpString('lero_voice_sound', tostring(soundEnabled))
    SetResourceKvpString('lero_voice_notify', tostring(notifyEnabled))
end

-- Spielt Click-Sound ab (wenn aktiviert)
local function playClick()
    if not soundEnabled then return end
    PlaySoundFrontend(-1, clickSoundName, clickSoundSet, true)
end

-- Zeigt Benachrichtigung an (wenn aktiviert)
local function notifyRange(label, range)
    if not notifyEnabled then return end
    if GetResourceState('ox_lib') ~= 'started' then return end
    
    exports.ox_lib:notify({
        title = 'Sprachweite',
        description = ('%s (%.2fm)'):format(label, range),
        type = 'inform',
        duration = 1800,
        position = 'top'
    })
end

-- Berechnet Höhe des Kreises
local function getCircleHeight(playerPed, mode)
    local baseHeight = IsPedInAnyVehicle(playerPed, false) and 0.5 or -0.5
    if mode == 5 or mode == 6 then
        baseHeight = IsPedInAnyVehicle(playerPed, false) and 1.0 or 0.5
    end
    return baseHeight
end

-- Zeichnet den Kreis
local function drawCircle(x, y, z, radius, width, r, g, b, a)
    local segments = 64
    local step = (2 * math.pi) / segments

    local adjustedRadius = (radius or 0.0) * scaleFactor
    local innerRadius = adjustedRadius - (width / 2)
    local outerRadius = adjustedRadius + (width / 2)

    for i = 0, segments - 1 do
        local angle1 = i * step
        local angle2 = (i + 1) * step

        local inner1 = vector3(x + innerRadius * math.cos(angle1), y + innerRadius * math.sin(angle1), z)
        local inner2 = vector3(x + innerRadius * math.cos(angle2), y + innerRadius * math.sin(angle2), z)

        local outer1 = vector3(x + outerRadius * math.cos(angle1), y + outerRadius * math.sin(angle1), z)
        local outer2 = vector3(x + outerRadius * math.cos(angle2), y + outerRadius * math.sin(angle2), z)

        DrawPoly(inner1.x, inner1.y, inner1.z, outer1.x, outer1.y, outer1.z, inner2.x, inner2.y, inner2.z, r, g, b, a)
        DrawPoly(outer1.x, outer1.y, outer1.z, outer2.x, outer2.y, outer2.z, inner2.x, inner2.y, inner2.z, r, g, b, a)
    end
end

-- Event: Voice Mode geändert
RegisterNetEvent('pma-voice:setTalkingMode', function(mode)
    local newMode = tonumber(mode) or currentMode
    if newMode == currentMode then return end

    currentMode = newMode
    drawToken = drawToken + 1
    local myToken = drawToken

    local range = voiceRanges[currentMode] or 0.0
    local label = modeLabels[currentMode] or ("Mode " .. tostring(currentMode))

    playClick()
    notifyRange(label, range)

    local endTime = GetGameTimer() + showMs

    CreateThread(function()
        while myToken == drawToken and GetGameTimer() < endTime do
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local zOff = getCircleHeight(ped, currentMode)

            local width = (currentMode == 5 or currentMode == 6) and circleWidth * 3 or circleWidth

            drawCircle(coords.x, coords.y, coords.z + zOff, range, width, table.unpack(circleColor))
            Wait(0)
        end
    end)
end)

-- Command: Toggle Sound & Benachrichtigung
RegisterCommand('voicetoggle', function()
    soundEnabled = not soundEnabled
    notifyEnabled = not notifyEnabled
    
    savePreferences()
    
    if GetResourceState('ox_lib') == 'started' then
        exports.ox_lib:notify({
            title = 'Voice Range',
            description = ('Sound & Benachrichtigung %s'):format(soundEnabled and 'aktiviert' or 'deaktiviert'),
            type = 'success',
            duration = 2500
        })
    end
end, false)

-- Einstellungen beim Start laden
CreateThread(function()
    loadPreferences()
end)
