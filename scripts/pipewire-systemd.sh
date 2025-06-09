#!/bin/bash
systemctl --user disable --now pulseaudio.socket pulseaudio.service &&
	systemctl --user enable --now pipewire-pulse.socket wireplumber.service &&
	systemctl --user enable --now pipewire.service
