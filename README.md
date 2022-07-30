# rust-tools

cross compile several Rust tools

## target
- x86_64-unknown-linux-gnu
- i686-unknown-linux-gnu
- armv7-unknown-linux-gnueabihf
- aarch64-unknown-linux-gnu

## tools
- [bat](https://github.com/sharkdp/bat)
- ~~[delta](https://github.com/dandavison/delta)~~
- [dtool](https://github.com/guoxbin/dtool)
- [exa](https://github.com/ogham/exa)
- [fd](https://github.com/sharkdp/fd)
- [fselect](https://github.com/jhspetersson/fselect)
- [hexyl](https://github.com/sharkdp/hexyl)
- [hyperfine](https://github.com/sharkdp/hyperfine)
- [lsd](https://github.com/Peltoche/lsd)
- [rg](https://github.com/BurntSushi/ripgrep)
- [sd](https://github.com/chmln/sd)

## one-liner to download latest

```
curl -s https://api.github.com/repos/franklai/rust-tools/releases/latest \
 | grep browser_download_url \
 | grep x86_64 \
 | cut -d : -f 2,3 \
 | tr -d \" \
 | wget -nv --show-progress -i -
```

or

```
curl -s https://api.github.com/repos/franklai/rust-tools/releases/latest \
 | python3 -c "import json, sys; j=json.load(sys.stdin); urls=[item['browser_download_url'] for item in j['assets']]; print('\n'.join(urls));" \
 | grep x86_64 \
 | wget -nv --show-progress -i -
```

