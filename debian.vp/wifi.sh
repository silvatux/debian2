#!/usr/bin/env bash

echo -e " -------------- wifi ok ----------------\n"

sudo wpa_supplicant -B -i wlp7s0 -c /etc/wpa_supplicant.conf -Dnl80211,wex

sudo dhclient wlp7s0
