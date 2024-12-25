set dir="C:\Users\Tamino\Documents\Projekte\the-battle-of-the-teutoburg-forest"
set map=%dir%\the-battle-of-the-teutoburg-forest.w3x
%dir%\pjass.exe -v
for %%f in (%map%\war3mapImported\*.ai) do %dir%\pjass.exe %dir%\wc3reforged\common.j %map%\scripts\common.ai "%%f"
for %%f in (%map%\war3mapImported\*.j) do %dir%\pjass.exe %dir%\wc3reforged\common.j %map%\scripts\common.ai %dir%\wc3reforged\Blizzard.j "%%f"

pause
