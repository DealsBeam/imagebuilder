# this file is supposed to be sourced by the get-files shell script

rm -f ${DOWNLOAD_DIR}/kernel-raspberry_pi_4-aarch64.tar.gz
wget -v https://github.com/hexdump0815/linux-raspberry-pi-4-kernel/releases/download/${raspberry_pi_4_release_version}/${raspberry_pi_4_release_version}.tar.gz -O ${DOWNLOAD_DIR}/kernel-raspberry_pi_4-aarch64.tar.gz
