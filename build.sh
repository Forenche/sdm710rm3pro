git clone --depth=1 https://github.com/kdrag0n/proton-clang toolchain

export PATH="/home/travis/sdm710rm3pro/toolchain/bin:${PATH}"

export ARCH=arm64

make O=out RMX1851_defconfig

make CROSS_COMPILE=aarch64-linux-gnu- \
			CROSS_COMPILE_ARM32=arm-linux-gnueabi- \
			CC=clang \
			AR=llvm-ar \
			OBJDUMP=llvm-objdump \
			STRIP=llvm-strip
      
make -j8 O=out \
		NM=llvm-nm \
		OBJCOPY=llvm-objcopy
