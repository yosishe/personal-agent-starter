#!/usr/bin/env bash
# שומר סף: חוסם פקודות טרמינל הרסניות שהסוכן מנסה להריץ.
# Antigravity מעביר ל-hook את פרטי הקריאה ב-stdin כ-JSON; אנחנו בודקים את הטקסט הגולמי.
# יציאה עם קוד 2 = לחסום את הפעולה ולהחזיר את ההודעה לסוכן.

input="$(cat)"

if echo "$input" | grep -Eqi 'rm -rf|rm -r |rmdir|git push --force|git reset --hard|git clean|> /dev/|mkfs|:(){'; then
  echo "נחסם על ידי scripts/guard.sh: פקודת מחיקה/דריסה. הסוכן לא מוחק — מעביר ל-00-inbox/_archive/ ומסביר למה." >&2
  exit 2
fi

exit 0
