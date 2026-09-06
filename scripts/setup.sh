#!/usr/bin/env bash
# הקמה — פעם אחת אחרי השכפול. מריצים מתוך תיקיית הריפו.
set -euo pipefail

cd "$(dirname "$0")/.."

chmod +x scripts/guard.sh

mkdir -p 00-inbox/_archive 01-daily 02-people 03-projects

# היומן של היום, מהתבנית
TODAY="$(date +%Y-%m-%d)"
if [ ! -f "01-daily/$TODAY.md" ]; then
  sed "s/{{date}}/$TODAY/g" 06-templates/daily.md > "01-daily/$TODAY.md"
fi

# git — אם עוד לא
if [ ! -d .git ]; then
  git init -q
  git add -A
  git commit -qm "הסוכן האישי — יום ראשון"
fi

echo "מוכן."
echo "1. פתח את התיקייה הזאת ב-Antigravity (File > Open Folder)."
echo "2. פתח אותה גם ב-Obsidian (Open folder as vault)."
echo "3. בצ'אט של Antigravity כתוב: /morning"
