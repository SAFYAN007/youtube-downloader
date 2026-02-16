# 🎬 YouTube Downloader - Visual Setup Guide

## 📺 Video Tutorial Script (Step-by-Step Screenshots ke sath)

---

## PART 1: INSTALLATION (5-10 Minutes)

### Screenshot 1: Python Download
```
┌─────────────────────────────────────┐
│  🌐 Browser: python.org/downloads   │
├─────────────────────────────────────┤
│                                     │
│   [Download Python 3.12.0]          │
│                                     │
│   ✅ Add Python to PATH             │
│                                     │
└─────────────────────────────────────┘
```
**Action**: Download button par click karein aur install karein

---

### Screenshot 2: Command Prompt/Terminal Open
```
Windows:
┌─────────────────────────────────────┐
│  🔍 Search: cmd                     │
│                                     │
│  > Command Prompt                   │
│                                     │
└─────────────────────────────────────┘

Mac/Linux:
┌─────────────────────────────────────┐
│  🔍 Search: Terminal                │
│                                     │
│  > Terminal                         │
│                                     │
└─────────────────────────────────────┘
```
**Action**: Terminal/CMD kholen

---

### Screenshot 3: Python Version Check
```
┌─────────────────────────────────────┐
│  C:\Users\YourName> python --version│
│                                     │
│  Python 3.12.0                      │
│                                     │
└─────────────────────────────────────┘
```
**Action**: Type karein: `python --version`
**Result**: Version number dikhna chahiye

---

### Screenshot 4: Project Folder Navigate
```
┌─────────────────────────────────────┐
│  C:\Users\YourName> cd youtube-     │
│  downloader                         │
│                                     │
│  C:\Users\YourName\youtube-         │
│  downloader>                        │
│                                     │
└─────────────────────────────────────┘
```
**Action**: Type karein: `cd youtube-downloader`

---

### Screenshot 5: Install Packages
```
┌─────────────────────────────────────┐
│  C:\...\youtube-downloader>         │
│  pip install -r requirements.txt    │
│                                     │
│  Installing Flask...     ✓          │
│  Installing flask-cors... ✓         │
│  Installing yt-dlp...    ✓          │
│                                     │
│  Successfully installed!            │
└─────────────────────────────────────┘
```
**Action**: Type karein: `pip install -r requirements.txt`
**Wait**: 1-2 minutes

---

## PART 2: RUNNING THE APP (2-3 Minutes)

### Screenshot 6: Start Backend Server
```
┌─────────────────────────────────────┐
│  C:\...\youtube-downloader>         │
│  python backend_api.py              │
│                                     │
│  🚀 YouTube Downloader API Starting │
│  🌐 Running on:                     │
│     http://localhost:5000           │
│                                     │
│  * Serving Flask app 'backend_api' │
│  * Debug mode: on                   │
│                                     │
└─────────────────────────────────────┘
```
**Action**: Type karein: `python backend_api.py`
**Important**: Is window ko BAND MAT KAREIN!

---

### Screenshot 7: Open Frontend
```
┌─────────────────────────────────────┐
│  📁 File Explorer                   │
│                                     │
│  youtube-downloader/                │
│  ├── index.html  👈 (Double click)  │
│  ├── backend_api.py                 │
│  └── ...                            │
│                                     │
└─────────────────────────────────────┘
```
**Action**: index.html par double-click karein

---

### Screenshot 8: Browser Opens
```
┌─────────────────────────────────────┐
│  🌐 Browser                         │
│  file:///C:/.../index.html          │
├─────────────────────────────────────┤
│                                     │
│      YT DOWNLOADER                  │
│                                     │
│  [Paste YouTube link here...]       │
│                                     │
│  [Get Video Info]                   │
│                                     │
└─────────────────────────────────────┘
```
**Result**: Beautiful UI load hona chahiye

---

## PART 3: USING THE DOWNLOADER (1-2 Minutes)

### Screenshot 9: Copy YouTube URL
```
┌─────────────────────────────────────┐
│  🌐 YouTube                         │
│  youtube.com/watch?v=dQw4w9WgXcQ    │
│                    ↑                │
│              (Right click > Copy)   │
│                                     │
│  Video: "Never Gonna Give You Up"   │
│                                     │
└─────────────────────────────────────┘
```
**Action**: YouTube video ka URL copy karein

---

### Screenshot 10: Paste URL in Downloader
```
┌─────────────────────────────────────┐
│      YT DOWNLOADER                  │
│                                     │
│  [youtube.com/watch?v=dQw4w9WgXcQ]  │
│   ↑ (Paste URL here)                │
│                                     │
│  [Get Video Info] 👈 (Click)        │
│                                     │
└─────────────────────────────────────┘
```
**Action**: URL paste karein aur button click karein

---

### Screenshot 11: Video Info Loaded
```
┌─────────────────────────────────────┐
│  ┌─────────────────────────────┐   │
│  │ 📺 [Thumbnail]              │   │
│  │                             │   │
│  │ Never Gonna Give You Up     │   │
│  │ 3:32 • Rick Astley         │   │
│  └─────────────────────────────┘   │
│                                     │
│  Format:  [🎥 MP4]  [🎵 MP3]       │
│                                     │
│  Quality:                           │
│  [1080p] [720p] [480p] [360p]      │
│                                     │
└─────────────────────────────────────┘
```
**Result**: Video ka preview dikhega

---

### Screenshot 12: Select Format & Quality
```
┌─────────────────────────────────────┐
│  Format:  [🎥 MP4 ✓]  [🎵 MP3]     │
│                                     │
│  Quality:                           │
│  [1080p] [720p ✓] [480p] [360p]    │
│     ↑                               │
│  (Click on any quality)             │
│                                     │
└─────────────────────────────────────┘
```
**Action**: Format aur quality choose karein

---

### Screenshot 13: Download Starting
```
┌─────────────────────────────────────┐
│                                     │
│      ⚙️ Preparing MP4 download...   │
│                                     │
│      [■■■■■■░░░░] 60%              │
│                                     │
└─────────────────────────────────────┘
```
**Result**: Download progress dikhega

---

### Screenshot 14: Download Complete
```
┌─────────────────────────────────────┐
│                                     │
│  ✅ Download started!                │
│                                     │
│  Format: MP4                        │
│  Quality: 720p                      │
│                                     │
│  File saved to Downloads folder     │
│                                     │
└─────────────────────────────────────┘
```
**Result**: File download ho jayegi!

---

## 🎯 Quick Reference Card

```
╔═══════════════════════════════════════════════════════╗
║         YOUTUBE DOWNLOADER - QUICK COMMANDS           ║
╠═══════════════════════════════════════════════════════╣
║                                                       ║
║  📁 Navigate to folder:                              ║
║     cd youtube-downloader                            ║
║                                                       ║
║  📦 Install packages:                                ║
║     pip install -r requirements.txt                  ║
║                                                       ║
║  🚀 Start backend:                                   ║
║     python backend_api.py                            ║
║                                                       ║
║  🌐 Start frontend server (optional):                ║
║     python -m http.server 8000                       ║
║                                                       ║
║  🔗 Backend URL:                                     ║
║     http://localhost:5000                            ║
║                                                       ║
║  🔗 Frontend URL (if using server):                  ║
║     http://localhost:8000                            ║
║                                                       ║
║  ⛔ Stop server:                                     ║
║     Press Ctrl + C                                   ║
║                                                       ║
╚═══════════════════════════════════════════════════════╝
```

---

## 🆘 Common Errors & Solutions

### Error 1: "Python is not recognized"
```
┌─────────────────────────────────────┐
│  'python' is not recognized as an   │
│  internal or external command       │
└─────────────────────────────────────┘

✅ Solution:
- Python install nahi hai
- Python.org se download aur install karein
- "Add to PATH" checkbox check karein
- Computer restart karein
```

### Error 2: "No module named 'flask'"
```
┌─────────────────────────────────────┐
│  ModuleNotFoundError: No module     │
│  named 'flask'                      │
└─────────────────────────────────────┘

✅ Solution:
- Packages install nahi hue
- Run karein: pip install -r requirements.txt
```

### Error 3: "FFmpeg not found"
```
┌─────────────────────────────────────┐
│  ERROR: FFmpeg not found            │
└─────────────────────────────────────┘

✅ Solution:
- FFmpeg install karein
- Windows: choco install ffmpeg
- Mac: brew install ffmpeg
- Linux: sudo apt install ffmpeg
```

### Error 4: "Address already in use"
```
┌─────────────────────────────────────┐
│  OSError: [Errno 48] Address       │
│  already in use                     │
└─────────────────────────────────────┘

✅ Solution:
- Port 5000 already use ho raha hai
- Pehle wala server band karein
- Ya code mein port change karein (5001, 5002, etc.)
```

### Error 5: "Failed to fetch"
```
┌─────────────────────────────────────┐
│  Failed to fetch video information  │
└─────────────────────────────────────┘

✅ Solution:
- Backend running nahi hai
- Backend terminal check karein
- python backend_api.py dubara run karein
```

---

## 📋 Pre-flight Checklist

Before starting, make sure:

- ✅ Python 3.8+ installed hai
- ✅ FFmpeg installed hai
- ✅ All 4 files ek hi folder mein hain:
  - index.html
  - backend_api.py
  - requirements.txt
  - README.md
- ✅ Internet connection active hai
- ✅ Firewall backend server ko block nahi kar raha

---

## 🎬 Video Tutorial Outline

**Agar aap YouTube tutorial banana chahte hain:**

1. **Intro** (0:00-0:30)
   - Project introduction
   - Features showcase

2. **Prerequisites** (0:30-2:00)
   - Python installation
   - FFmpeg installation

3. **Setup** (2:00-4:00)
   - Download files
   - Install packages
   - Folder structure

4. **Running** (4:00-6:00)
   - Start backend
   - Open frontend
   - First download demo

5. **Troubleshooting** (6:00-8:00)
   - Common errors
   - Solutions

6. **Outro** (8:00-9:00)
   - Tips & tricks
   - Call to action

---

## 💡 Pro Tips for Smooth Experience

1. **Always Run Backend First**
   - Backend pehle start karo, then frontend kholo

2. **Keep Terminal Open**
   - Backend terminal ko minimize kar do, band mat karo

3. **Use Latest Browser**
   - Chrome, Firefox, or Edge recommended

4. **Check Backend Logs**
   - Agar issue hai, backend terminal mein error dikhega

5. **Update yt-dlp Monthly**
   - YouTube changes karta rehta hai
   - Command: `pip install --upgrade yt-dlp`

---

**Happy Downloading! 🎉**
