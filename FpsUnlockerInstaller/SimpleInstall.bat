rem This will simply only install the fps unlocker by running it once.

@echo off
setlocal

set "sourceFolder=%~dp0ClientSettings"
set "targetParent=C:\Users\%USERNAME%\AppData\Local\Roblox\Versions"

for /d %%G in ("%targetParent%\*") do (
    if exist "%%G\content" (
        if not exist "%%G\StudioFonts" (
            echo Copying to "%%G"
            xcopy /e /i /y "%sourceFolder%" "%%G\ClientSettings"
        )
    )
)

echo Task completed.
pause