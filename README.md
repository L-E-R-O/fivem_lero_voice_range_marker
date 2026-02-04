# 🎙️ LERO Voice Range Marker

> 💜 A beautiful visual voice range marker for FiveM that brings your communication to life!

[![FiveM](https://img.shields.io/badge/FiveM-Ready-blue.svg)](https://fivem.net/)
[![Lua](https://img.shields.io/badge/Lua-5.4-purple.svg)](https://www.lua.org/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Version](https://img.shields.io/badge/Version-1.1.0-orange.svg)](https://github.com/L-E-R-O/fivem_lero_voice_range_marker)

## ✨ What does it do?

This friendly little helper displays a **stunning purple circle** around your character when you change your voice range! Perfectly synchronized with **pma-voice**, you'll instantly see how far your voice reaches – from gentle whispers to powerful shouts! 🎵

## 🌟 Features

- 💎 **Beautiful visual circle** in your favorite color (purple!)
- 🎯 **6 Range Levels**: Whisper, Quiet, Normal, Loud, Shout, Scream
- 🔔 **Friendly notifications** with ox_lib
- 🔊 **Smooth click sounds** when switching
- 💾 **Smart saving** of your preferences
- ⚡ **Super performant** – no FPS drops!
- 🎨 **Adaptive height** based on vehicle or on foot

## 📦 Installation

### Prerequisites
- [pma-voice](https://github.com/AvarianKnight/pma-voice) (essential!)
- [ox_lib](https://github.com/overextended/ox_lib) (for beautiful notifications)

### Easy setup:
1. **Download** this repo 💝
2. **Extract** it to your `resources` folder
3. **Add** to your `server.cfg`:
   ```cfg
   ensure fivem_lero_voice_range_marker
   ```
4. **Start** your server and enjoy! 🎉

## 🎮 Usage

### Automatic
Every time you change your voice range (default: `F2`), a beautiful circle appears for 3 seconds showing you your current range! 🪄

### Command
```
/voicetoggle
```
Toggles sounds and notifications on/off – for those quiet moments! 🤫

## 🎨 Range Details

| Level | Name | Radius | Perfect for... |
|-------|------|--------|----------------|
| 1 | 🤫 Whisper | 0.75m | Secrets |
| 2 | 🗣️ Quiet | 1.5m | Private conversations |
| 3 | 💬 Normal | 3m | Everyday chat |
| 4 | 📢 Loud | 6m | Important announcements |
| 5 | 📣 Shout | 12m | Long-distance communication |
| 6 | 🔊 Scream | 24m | Emergencies & warnings |

## 🎁 Special Features

- **Smart Height Detection** 🚗: The circle automatically adjusts whether you're in a vehicle or on foot
- **Larger circles** for Shout & Scream – so you can see the difference instantly!
- **Your settings are saved** – everything stays just the way you like it on next login! 💖

## 🛠️ Configuration

All important settings can be found at the top of `client.lua`:

- **Circle Color**: Purple by default (`128, 0, 255, 100`) – but you can change it! 🎨
- **Display Time**: 3 seconds – perfect for a quick glance
- **Circle Width**: Adjustable to your preferences

## 💝 Support & Thanks

Love this script? Give us a ⭐ on GitHub! It means the world to us! 

Issues or ideas? Just open an [Issue](https://github.com/L-E-R-O/fivem_lero_voice_range_marker/issues) – we're happy to help! 🤗

## 📜 License

MIT – Use it, love it, share it! 💕

---

<div align="center">
  
**Made with 💜 by LERO**

*For a better FiveM community!* ✨

[⬆ Back to top](#-lero-voice-range-marker)

</div>
