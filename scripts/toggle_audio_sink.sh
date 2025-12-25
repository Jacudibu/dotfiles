#!/bin/bash
# This script toggles between headphone and speaker AUX outputs on the Creative Soundblaster Z.

x=$(pactl get-default-sink)

headphones="alsa_output.pci-0000_06_00.0.analog-stereo"
speakers="alsa_output.pci-0000_06_00.0.iec958-stereo"

if [[ $x =~ $speakers ]]; then
	pactl set-default-sink $headphones
else
	pactl set-default-sink $speakers
fi
