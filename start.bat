@echo off
echo ========================================
echo   YouTube Downloader - Quick Start
echo ========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python nahi mila!
    echo.
    echo Pehle Python install karein:
    echo https://www.python.org/downloads/
    echo.
    echo Installation ke time "Add Python to PATH" checkbox check karein!
    pause
    exit /b 1
)

echo [OK] Python mil gaya!
echo.

REM Check if FFmpeg is installed
ffmpeg -version >nul 2>&1
if errorlevel 1 (
    echo [WARNING] FFmpeg nahi mila!
    echo.
    echo FFmpeg install karne ke liye:
    echo 1. PowerShell ko Administrator mode mein kholen
    echo 2. Run karein: choco install ffmpeg
    echo.
    echo Ya manual install karein: https://ffmpeg.org/download.html
    echo.
    pause
)

echo [OK] FFmpeg mil gaya!
echo.

REM Install Python packages
echo Installing Python packages...
echo.
pip install Flask flask-cors yt-dlp
if errorlevel 1 (
    echo [ERROR] Packages install nahi ho sake!
    pause
    exit /b 1
)

echo.
echo [OK] Sab packages install ho gaye!
echo.

REM Create downloads folder
if not exist "downloads" mkdir downloads

echo ========================================
echo   Backend Server Start Ho Raha Hai...
echo ========================================
echo.
echo Backend chal jayega: http://localhost:5000
echo.
echo IMPORTANT:
echo - Is window ko band mat karein!
echo - index.html ko browser mein kholen
echo - Ya new terminal mein run karein: python -m http.server 8000
echo.
echo Press Ctrl+C to stop the server
echo.
echo ========================================
echo.

python backend_api.py

pause
