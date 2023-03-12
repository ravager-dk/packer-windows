#!/bin/bash
# Insider ISO
packer build \
  --only=vmware-iso \
  --var vhv_enable=true \
  --var autounattend=./tmp/2022_core/Autounattend.xml \
  --var iso_url=~/.cache/packer/caff720c675a0670657cb6bcfb438d3b0c664081.iso \
  --var iso_checksum="sha256:3e4fa6d8507b554856fc9ca6079cc402df11a8b79344871669f0251535255325" \
  windows_2022_docker.json
