# 🎙️ LERO Voice Range Marker

> 💜 Ein wunderschöner visueller Voice Range Marker für FiveM, der deine Kommunikation zum Leben erweckt!

[![FiveM](https://img.shields.io/badge/FiveM-Ready-blue.svg)](https://fivem.net/)
[![Lua](https://img.shields.io/badge/Lua-5.4-purple.svg)](https://www.lua.org/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Version](https://img.shields.io/badge/Version-1.1.0-orange.svg)](https://github.com/L-E-R-O/fivem_lero_voice_range_marker)

## ✨ Was macht es?

Dieser freundliche kleine Helfer zeigt einen **atemberaubenden violetten Kreis** um deinen Charakter, wenn du deine Sprachweite änderst! Perfekt synchronisiert mit **pma-voice**, siehst du sofort, wie weit deine Stimme reicht – von zartem Flüstern bis zu kraftvollem Schreien! 🎵

## 🌟 Features

- 💎 **Wunderschöner visueller Kreis** in deiner Lieblingsfarbe (lila!)
- 🎯 **6 Reichweiten-Stufen**: Flüstern, Leise, Normal, Laut, Rufen, Schreien
- 🔔 **Freundliche Benachrichtigungen** mit ox_lib
- 🔊 **Sanfte Click-Sounds** beim Wechseln
- 💾 **Intelligente Speicherung** deiner Einstellungen
- ⚡ **Super performant** – keine FPS-Einbußen!
- 🎨 **Anpassbare Höhe** je nach Fahrzeug oder zu Fuß

## 📦 Installation

### Voraussetzungen
- [pma-voice](https://github.com/AvarianKnight/pma-voice) (essentiell!)
- [ox_lib](https://github.com/overextended/ox_lib) (für schöne Notifications)

### So einfach geht's:
1. **Download** dieses Repo 💝
2. **Entpacke** es in deinen `resources` Ordner
3. **Füge hinzu** zur `server.cfg`:
   ```cfg
   ensure fivem_lero_voice_range_marker
   ```
4. **Starte** deinen Server und genieße! 🎉

## 🎮 Verwendung

### Automatisch
Jedes Mal, wenn du deine Sprachweite änderst (Standard: `F2`), erscheint für 3 Sekunden ein schöner Kreis, der dir deine aktuelle Reichweite zeigt! 🪄

### Command
```
/voicetoggle
```
Schaltet Sounds und Benachrichtigungen an/aus – für die stillen Momente! 🤫

## 🎨 Die Reichweiten im Detail

| Stufe | Name | Radius | Perfekt für... |
|-------|------|--------|----------------|
| 1 | 🤫 Flüstern | 0.75m | Geheimnisse |
| 2 | 🗣️ Leise | 1.5m | Private Gespräche |
| 3 | 💬 Normal | 3m | Alltägliches |
| 4 | 📢 Laut | 6m | Wichtige Ansagen |
| 5 | 📣 Rufen | 12m | Auf Abstand kommunizieren |
| 6 | 🔊 Schreien | 24m | Notfälle & Warnungen |

## 🎁 Besondere Features

- **Smart Height Detection** 🚗: Der Kreis passt sich automatisch an, ob du in einem Fahrzeug sitzt oder läufst
- **Größere Kreise** für Rufen & Schreien – damit du den Unterschied sofort siehst!
- **Deine Einstellungen werden gespeichert** – beim nächsten Login ist alles wie du es magst! 💖

## 🛠️ Konfiguration

Alle wichtigen Einstellungen findest du am Anfang der `client.lua`:

- **Kreisfarbe**: Standardmäßig lila (`128, 0, 255, 100`) – aber du kannst sie ändern! 🎨
- **Anzeigezeit**: 3 Sekunden – perfekt, um einen Blick drauf zu werfen
- **Kreisbreite**: Anpassbar für deine Vorlieben

## 💝 Support & Danke

Gefällt dir das Script? Gib uns einen ⭐ auf GitHub! Das motiviert uns unglaublich! 

Probleme oder Ideen? Öffne einfach ein [Issue](https://github.com/L-E-R-O/fivem_lero_voice_range_marker/issues) – wir helfen gerne! 🤗

## 📜 Lizenz

MIT – Nutze es, liebe es, teile es! 💕

---

<div align="center">
  
**Gemacht mit 💜 von LERO**

*Für eine bessere FiveM Community!* ✨

[⬆ Zurück nach oben](#-lero-voice-range-marker)

</div>
