if (Test-Path ./output-hyperv-iso) {
  Remove-Item -Recurse -Force ./output-hyperv-iso
}

packer build --only=hyperv-iso `
  --var iso_url=./iso/20348.169.210806-2348.fe_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso `
  --var iso_checksum="sha256:3e4fa6d8507b554856fc9ca6079cc402df11a8b79344871669f0251535255325" `
  windows_2022_docker.json
