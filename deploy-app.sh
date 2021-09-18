#!/bin/bash

set -eux

# アプリのビルド
cd rust
cargo build --release
cd -

# サービスの再起動
sudo systemctl restart isucholar.rust.service

