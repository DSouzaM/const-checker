#!/bin/bash
set -e

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 [llvm version]"
  exit 1
fi
version=$1

if [[ $1 -eq "8" ]]; then
  sudo pacman -U https://archive.archlinux.org/packages/l/llvm-libs/llvm-libs-8.0.0-1-x86_64.pkg.tar.xz --noconfirm
  sudo pacman -U https://archive.archlinux.org/packages/l/llvm/llvm-8.0.0-1-x86_64.pkg.tar.xz --noconfirm
  sudo pacman -U https://archive.archlinux.org/packages/c/clang/clang-8.0.0-1-x86_64.pkg.tar.xz --noconfirm
elif [[ $1 -eq "9" ]]; then
  sudo pacman -U https://archive.archlinux.org/packages/l/llvm-libs/llvm-libs-9.0.0-1-x86_64.pkg.tar.xz --noconfirm
  sudo pacman -U https://archive.archlinux.org/packages/l/llvm/llvm-9.0.0-1-x86_64.pkg.tar.xz --noconfirm
  sudo pacman -U https://archive.archlinux.org/packages/c/clang/clang-9.0.0-1-x86_64.pkg.tar.xz --noconfirm
elif [[ $1 -eq "10" ]]; then
  sudo pacman -U https://archive.archlinux.org/packages/l/llvm-libs/llvm-libs-10.0.0-1-x86_64.pkg.tar.zst --noconfirm
  sudo pacman -U https://archive.archlinux.org/packages/l/llvm/llvm-10.0.0-1-x86_64.pkg.tar.zst --noconfirm
  sudo pacman -U https://archive.archlinux.org/packages/c/clang/clang-10.0.0-1-x86_64.pkg.tar.zst --noconfirm
else
  echo "Unknown version $1"
fi

