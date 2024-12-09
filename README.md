# home-manager

```bash
mkdir -p ~/.config/nix
cat >>~/.config/nix/nix.conf <<EOF
experimental-features = nix-command flakes
substituters = https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store https://cache.nixos.org/
EOF

sh <(curl -L https://nixos.org/nix/install) --no-daemon
git clone https://github.com/oubl23/home-manager.git ~/.config/home-manager

cp ~/.config/home-manager/config-nix.toml .config-nix.toml
nix run home-manager/master -- switch
```
