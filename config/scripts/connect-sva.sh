#!/bin/bash

current_ip=$(curl -s ifconfig.me)
sva_ip='105.27.142.118'

if [[ "$current_ip" == "$sva_ip" ]]; then
  sudo wg-quick down wg-sva
else
  sudo wg-quick up wg-sva
fi
