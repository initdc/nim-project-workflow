ZIG_LINKERS_DIR = "zig-linkers"
`mkdir -p #{ZIG_LINKERS_DIR}`

def gen_zig_linkers zig_target, zig_linker
    wrapper = "#!/bin/sh
#{zig_linker} #{zig_target} $@"

    `echo > #{ZIG_LINKERS_DIR}/#{zig_target} '#{wrapper}'`
    `sudo chmod +x #{ZIG_LINKERS_DIR}/#{zig_target}`
end

# https://nim-lang.org/docs/nimc.html#crossminuscompilation
# https://nim-lang.org/docs/nimc.html#compiler-usage-configuration-files
def gen_nim_cfg cpu, os, cc, zig_target
    wrapper = "#{cpu}.#{os}.#{cc}.path = \"#{`pwd`.delete "\n"}/#{ZIG_LINKERS_DIR}\"
#{cpu}.#{os}.#{cc}.exe = \"#{zig_target}\"
#{cpu}.#{os}.#{cc}.linkerexe = \"#{zig_target}\"
"

    `echo >> nim.cfg '#{wrapper}'`
end