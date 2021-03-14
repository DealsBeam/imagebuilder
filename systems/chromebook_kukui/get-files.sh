# this file is supposed to be sourced by the get-files shell script

chromebook_kukui_release_version="5.10.20-stb-cbm%2B"

rm -f ${DOWNLOAD_DIR}/kernel-chromebook_kukui-aarch64.tar.gz
wget -v https://github.com/hexdump0815/linux-mainline-mediatek-mt81xx-kernel/releases/download/${chromebook_kukui_release_version}/${chromebook_kukui_release_version}.tar.gz -O ${DOWNLOAD_DIR}/kernel-chromebook_kukui-aarch64.tar.gz

( cd ${DOWNLOAD_DIR} ; tar xzf kernel-chromebook_kukui-aarch64.tar.gz boot ; mv boot/vmlinux.kpart-krane-* boot-chromebook_kukui-aarch64.dd ; rm -rf boot )
