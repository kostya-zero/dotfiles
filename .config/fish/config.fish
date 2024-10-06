set fish_greeting

fish_add_path -U /home/zero/.local/bin
export GPG_TTY=$(tty)

export RUSTFLAGS="-C link-arg=-fuse-ld=mold -C linker=clang"

alias ls="eza --icons --sort type"
alias ll="eza --long --icons --sort type"
alias la="eza --long --all --icons --sort type"

alias g="git"
alias crg="cargo"
alias lg="lazygit"
alias vi="nvim"
alias cat="bat"

function prepare_clang
    export CC=clang
    export CXX=clang++
    export LD=mold
    export CC_LD=mold
    export CXX_LD=mold
    export AR=llvm-ar
    export NM=llvm-nm
    export STRIP=llvm-strip
    export OBJCOPY=llvm-objcopy
    export OBJDUMP=llvm-objdump
    export READELF=llvm-readelf
    export RANLIB=llvm-ranlib
    export HOSTCC=clang
    export HOSTCXX=clang++
    export HOSTAR=llvm-ar
    export HOSTLD=mold
    export LLVM=1
    export LLVM_IAS=1
end

function prepare_native_compile
    export CFLAGS="-O3 -mtune=native -march=native"
    export CXXFLAGS="$CFLAGS"
    export CCLDFLAGS="$LDFLAGS"
    export CXXLDFLAGS="$LDFLAGS"
end

# Setup Node.js
nvm use
