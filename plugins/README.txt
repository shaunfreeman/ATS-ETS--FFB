Description
===========================

This is port Linux of Real_G27_ffb plugin by Supric. Additionally Linux port does not restrict
usage only to Logitech wheels, but it should work on any steering wheel with support for constant force.


What it does?
===========================

Completely replaces the feedback in the game:
1)	Developed simulation of friction in the steering (since the steering wheel is rotated without resistance, 
	and the standard damper force is too poorly simulates the force). Simulation of friction allows to resolve 
	a wide "empty" Central zone in the feedback on the twin engine FFB controllers (G25/G27).
2) 	Due to the detection of "hidden" telemetry parameter (that returns the force on the suspension for each 
	wheel - dev.truck.wheel.suspension.force), for calculation of stabilizing efforts used formulas from the 
	theory of stabilization of the steered wheels of the vehicle. This required parameters of the suspension 
	(caster, camber, inclination of the axis of rotation – can be found in the specifications of the trucks. 
	This assembly used the corners of the MB Actros MP3). About steering running shoulder – I can’t find this 
	info in the specifications, i determined it by the method of looking at photos of the front hubs).
3)	Self-stabilization if deformable rolling wheels is still approximately (from experimental data), will be 
	further modified, if possible, the real physical model.


What it doesn't?
===========================

Missing implementation for:
- engine vibration


System Requirements
===========================

1) Euro Truck Simulator 2 v 1.17 or higher, American Truck Simulator v 1.0.0 or higher.
2) 64-bit version of the game


Installation
===========================

Download archive and extract all files and folders.
Put *.so & *.ini files into the folder: "..\Euro Truck Simulator 2\bin\linux_x64\plugins\".

If “plugins” folder doesn’t exists – just create it there. If plugin located correctly – you will see info game 
message about third-party applications. In the game.log.txt you’ll see information about plugin initialization.


Logitech LEDs not working, what now?
===========================

We can get this fixed, no worries! Just double click on script "run_persm_rules_fix.sh" found inside "leds_permission_fix" and choose Run in Terminal. Then type in your computer password and that's it!
Script will tell you what has been done and then kindly ask you to press a key to finish.


Settings
===========================

Plugin can be tweaked with settings stored in "real_ffb.ini" file. For more information download original 
plugin & take a look at Readme_eng_2.5.rtf saved in downloaded archive. All settings are properly described 
there.

Additionally this package is also providing "button_finder" application which can help you find button code
for real time LED mode switching. To get it working just double click "run_button_finder.sh" and choose
"Run In Terminal". After that program will start and will give you further instructions.


Credits
===========================

Supric - for original plugin: https://forum.scssoft.com/viewtopic.php?f=109&t=49772
50keda - for Linux port
