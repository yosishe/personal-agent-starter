---
name: weekly
description: >-
  Use when the owner says "שבוע", "סיכום שבועי", "/weekly", or when a weekly scheduled task fires (recommended: Sunday 08:00).
  Reviews the last 7 days of journal and tasks, moves closed tasks, flags stuck items and silent people, and writes 01-daily/weekly-YYYY-WW.md.
---

# סקירה שבועית

## קרא
- `01-daily/` — 7 הימים האחרונים
- `05-tasks/TASKS.md`
- `02-people/` — שדה `updated` של כל קובץ
- `04-memory/observations.md`

## עשה
1. העבר משימות `[x]` מהשבוע ל-`## סגורות` בתחתית `TASKS.md` (אל תמחק).
2. סמן משימות שנדחו **פעמיים או יותר** — אלה „תקועות". שאל על כל אחת: לסגור, לדחות בכוונה, או לפרק לצעד קטן?
3. רשימת „שקט מ": אנשים עם משימה פתוחה ו-`updated` ישן מ-21 יום.
4. ספור: כמה משימות נפתחו, כמה נסגרו, כמה איחרו. **בלי פרשנות** — רק המספרים.
5. תצפיות שחזרו 3 פעמים → הצע העברה לפלייבוק.

## כתוב
קובץ `01-daily/weekly-<YYYY>-W<שבוע>.md` בפורמט:
```
# שבוע <מספר> · <תאריכים>
נסגרו: N · נפתחו: N · איחרו: N
תקועות: …
שקט מ: …
לפלייבוק (מוצע): …
השאלה לשבוע הבא: …
```
הצג את הקובץ. ההעברות ל-`TASKS.md` נעשות ישירות; כל השאר — אחרי אישור.
