#!/bin/bash

# usbrelay 959BI_1=1 needs to be executed before the DUT is powered on, so that the DUT enters USB boot mode
# After flashing is completed, usbrelay needs to toggle the relay to off and cut power from the DUT,
# so the next boot will be from eMMC.
# The relay is in NC mode and connects SW2 pins 1 and 4 on the carrier board.

pushd /usr/src/app/imx_usb_loader/
./imx_usb

while true; do
    sleep 1
done
