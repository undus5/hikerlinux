#!/bin/bash

set -e

kver="$1"
dest="$2"
kimg="/usr/lib/modules/${kver}/vmlinuz"
[[ -f "$kimg" ]] || exit 1

dracut-install() {
    local stub_dir="$1"
    local vmlinuz=${stub_dir}/vmlinuz
    local initrd=${stub_dir}/initrd
    install -Dm0644 "$kimg" "$vmlinuz"
    dracut --force --hostonly --no-hostonly-cmdline --kver "$kver" "$initrd"
}

[[ -d "$dest" ]] && dracut-install "$dest" && exit 0

findmnt /a &>/dev/null || dracut-install /efi/a
findmnt /b &>/dev/null || dracut-install /efi/b
