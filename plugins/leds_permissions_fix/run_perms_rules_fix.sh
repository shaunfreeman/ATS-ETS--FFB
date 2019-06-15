#!/bin/bash

sudo cp 99-logitech-wheel-perms.rules /etc/udev/rules.d/ && echo "Rules permission file coppied."
sudo udevadm control --reload-rules && sudo udevadm trigger && echo "Rules reloaded."
echo "Your LEDs should be working now."
echo "Press any key, to close terminal and continue..."
read
