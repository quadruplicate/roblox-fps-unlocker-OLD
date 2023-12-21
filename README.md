#instructions.txt

right click MAINInstall.bat
hover over "Send to"
select "Desktop (create shortcut)"
rename it to whatever


why you should use an fps unlocker even if your monitor is only 60 hz:
roblox is completely parallel with vsync, instead uses their own janky method of preventing screen tearing,
which can actually make it look like you have LESS fps than you actually do.
the solution to this is having more fps so if by default on roblox visually you'd have 10% less fps, then that
means 66 fps already fixed all your problems
another (good) side-effect of using fps unlockers is that they fix input delay


another thing you may consider:
sometimes roblox developers bind events to your refresh rate, which means if you have 300 fps instead of 60,
their specific code will be ran 300 times instead of 60 times. this could either be good or bad, however usually
it doesnt affect anything. adding x*deltatime*60 to the code usually fixes this as well.
if you dont know what any of that means dont worry.

EXTRA NOTES:
* MAINInstall.bat now also supports your custom cursor images & oof sound. just replace the cursors inside
the folder named Cursors and rename them to the previous names (ArrowCursor.png is hovering over a button,
and ArrowFarCursor.png is the normal icon)
* ouch.ogg is the oof sound. MP3 IS NOT SUPPORTED, YOU HAVE TO USE OGG AND NAME THE FILE ouch.ogg
* SimpleInstall.bat is the v1 of the file, all it does is simply install the fps unlocker without prompting
the y/n questions for the cursor & the oof sound