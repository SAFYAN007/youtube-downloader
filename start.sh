#!/bin/bash

echo "========================================"
echo "  YouTube Downloader - Quick Start"
echo "========================================"
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "[ERROR] Python nahi mila!"
    echo ""
    echo "Python install karein:"
    echo "Mac: brew install python"
    echo "Linux: sudo apt install python3 python3-pip"
    echo ""
    exit 1
fi

echo "[OK] Python mil gaya!"
echo ""

# Check if FFmpeg is installed
if ! command -v ffmpeg &> /dev/null; then
    echo "[WARNING] FFmpeg nahi mila!"
    echo ""
    echo "FFmpeg install karne ke liye:"
    echo "Mac: brew install ffmpeg"
    echo "Linux: sudo apt install ffmpeg"
    echo ""
    read -p "Press Enter to continue..."
fi

echo "[OK] FFmpeg mil gaya!"
echo ""

# Install Python packages
echo "Installing Python packages..."
echo ""
pip3 install Flask flask-cors yt-dlp
if [ $? -ne 0 ]; then
    echo "[ERROR] Packages install nahi ho sake!"
    exit 1
fi

echo ""
echo "[OK] Sab packages install ho gaye!"
echo ""

# Create downloads folder
mkdir -p downloads

echo "========================================"
echo "  Backend Server Start Ho Raha Hai..."
echo "========================================"
echo ""
echo "Backend chal jayega: http://localhost:5000"
echo ""
echo "IMPORTANT:"
echo "- Is terminal ko band mat karein!"
echo "- index.html ko browser mein kholen"
echo "- Ya new terminal mein run karein: python3 -m http.server 8000"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""
echo "========================================"
echo ""

python3 backend_api.py
