#!/bin/sh
git submodule init --update

TOOL=starship
cargo build --release --manifest-path tools/$TOOL/Cargo.toml --target-dir dist

cross build --target armv7-unknown-linux-gnueabihf  --release --manifest-path tools/$TOOL/Cargo.toml --target-dir dist
