git clone https://github.com/kdrag0n/proton-clang toolchain

export PATH="./toolchain/bin:${PATH}"

export ARCH=arm64

make O=out RMX1851_defconfig

make O=out CC=clang CROSS_COMPILE=aarch64-linux-gnu- -j8
