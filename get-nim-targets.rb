def get_nim_arch
  return %W[i386 m68k alpha powerpc powerpc64 powerpc64el sparc vm hppa ia64 amd64 mips mipsel arm arm64 js nimvm avr msp430 sparc64 mips64 mips64el riscv32 riscv64 esp wasm32]
end

def get_nim_os
  return %W[DOS Windows OS2 Linux MorphOS SkyOS Solaris Irix NetBSD FreeBSD OpenBSD DragonFly CROSSOS AIX PalmOS QNX Amiga Atari Netware MacOS MacOSX iOS Haiku Android VxWorks Genode JS NimVM Standalone NintendoSwitch FreeRTOS Zephyr Any]
end

if __FILE__ == $0
  pp get_nim_arch
  pp get_nim_os
end
