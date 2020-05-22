git clone https://github.com/kdrag0n/proton-clang toolchain

export PATH="/home/travis/build/Blaster4385/sdm710rm3pro/toolchain/bin:${PATH}"

export ARCH=arm64

git remote add test https://github.com/AOSiP-Devices/kernel_xiaomi_sdm660.git

git fetch test

git cherry-pick 3b0f5f3c1388d885331726ea0754ec913dc08295

make O=out RMX1851_defconfig

make O=out CC=clang CROSS_COMPILE=aarch64-linux-gnu- -j8
