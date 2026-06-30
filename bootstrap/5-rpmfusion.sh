#!/bin/bash

FEDORA_VER=$(rpm -E %fedora)
FREE_PATH=free/fedora/rpmfusion-free-release-${FEDORA_VER}.noarch.rpm
NONFREE_PATH=free/fedora/rpmfusion-nonfree-release-${FEDORA_VER}.noarch.rpm

BASE_URL=https://mirrors.ustc.edu.cn/rpmfusion
# BASE_URL=https://mirrors.aliyun.com/rpmfusion
# BASE_URL=https://download1.rpmfusion.org

FREE_URL=${BASE_URL}/${FREE_PATH}
NONFREE_URL=${BASE_URL}/${NONFREE_PATH}

dnf install $FREE_URL
dnf install $NONFREE_URL

cat << EOF
==> FFmpeg
 dnf swap ffmpeg-free ffmpeg --allowerasing
==> AMD GPU
 dnf install mesa-va-drivers-freeworld
==> Intel GPU
 dnf install intel-media-driver
EOF
