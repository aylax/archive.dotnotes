#!/user/bin sh

# Arg: $1 means machine:
# - macos
# - nixos
[[ ! -d $HOME/.config ]] && mkdir -p $HOME/.config
ln -s $(pwd) $HOME/.config
nix-shell -p nixUnstable --command "nix build --experimental-features 'nix-command flakes' '.#$1'"

