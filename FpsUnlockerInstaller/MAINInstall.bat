@echo off
setlocal

set "sourceFolder=%~dp0ClientSettings"
set "targetParent=C:\Users\%USERNAME%\AppData\Local\Roblox\Versions"
set "didnts=0"

for /d %%G in ("%targetParent%\*") do (
    if exist "%%G\content" (
        if not exist "%%G\StudioFonts" (
            choice /c YN /n /m "Do you want to install the FPS Unlocker? (1/3 prompts) (Y/N)"
            
            if errorlevel 2 (
		echo Skipping FPS Unlocker
		set /a "didnts+=1"
	    ) else (
            	echo Copying to "%%G"
            	xcopy /e /i /y "%sourceFolder%" "%%G\ClientSettings"
		echo FPS Unlocker was installed at "%%G"
	    )

            choice /c YN /n /m "Do you want to install the old OOF sound? (2/3 prompts) (Y/N)"

            if errorlevel 2 (
		echo Skipping ouch.ogg
		set /a "didnts+=1"
	    ) else (
            	echo Copying to "%%G\content\sounds"
            	copy /y "%~dp0ouch.ogg" "%%G\content\sounds"
		echo Overrid ouch.ogg in "%%G\content\sounds"
	    )

            choice /c YN /n /m "Do you want to install your custom cursors? (3/3 prompts) (Y/N)"

            if errorlevel 2 (
		echo Skipping cursors
		set /a "didnts+=1"
	    ) else (
            	echo Copying to "%%G\content\textures\Cursors\KeyboardMouse"
            	copy /y "%~dp0Cursors\ArrowCursor.png" "%%G\content\textures\Cursors\KeyboardMouse\ArrowCursor.png"
            	copy /y "%~dp0Cursors\ArrowFarCursor.png" "%%G\content\textures\Cursors\KeyboardMouse\ArrowFarCursor.png"
		echo Overrid cursors in "%%G\content\textures\Cursors\KeyboardMouse"
	    )
        )
    )
)


if %didnts% equ 3 (
    echo then why the fuck did you open me...?
) else (
    echo Task completed.
)
pause