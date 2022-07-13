#!/bin/sh

x86_64_DARWIN=target/x86_64-apple-darwin/release/hello
x86_64_LINUX=target/x86_64-unknown-linux-gnu/release/hello
ARM64_DARWIN=target/aarch64-apple-darwin/release/hello
ARM64_LINUX=target/aarch64-unknown-linux-gnu/release/hello

touch init.done

if [ -f "$x86_64_DARWIN" ]; then
    echo "replacing x86_64 apple bin"
    touch amd64_apple.done
    rm -f dist/hello_darwin_amd64_v1/hello \
    && mv target/x86_64-apple-darwin/release/hello dist/hello_darwin_amd64_v1/hello
fi
if [ -f "$x86_64_LINUX" ]; then
    echo "replacing x86_64 linux bin"
    touch amd64_linux.done
    rm -f dist/hello_linux_amd64_v1/hello \
    && mv target/x86_64-unknown-linux-gnu/release/hello dist/hello_linux_amd64_v1/hello
fi
if [ -f "$ARM64_DARWIN" ]; then
    echo "replacing arm64 apple bin"
    touch arm64_apple.done
    rm -f dist/hello_darwin_arm64/hello \
    && mv target/aarch64-apple-darwin/release/hello dist/hello_darwin_arm64/hello
fi
if [ -f "$ARM64_LINUX" ]; then
    echo "replacing arm64 linux bin"
    touch arm64_linux.done
    rm -f dist/hello_linux_arm64/hello \
    && mv target/aarch64-unknown-linux-gnu/release/hello dist/hello_linux_arm64/hello
fi

touch script.done
