# dotfiles

## Install

If not specified below, the config files can be moved to `$HOME`

```text
cp .bashrc ~/
```

If you are unsure about the operation, you may use a prompted copy

```text
cp -i .bashrc ~/
```

### DNF

```text
mv /etc/dnf/dnf.conf /etc/dnf/dnf.conf.backup
cp .dnfconf /etc/dnf/dnf.conf
```

### Guake

```text
guake --restore-preferences .guake
```

### Neofetch

```text
cp .neofetch ~/.config/neofetch/config.conf
```

## Future work

- Use a `Makefile` to install all the appropriate config files to the correct location and with the correct names 

    For example, `.neofetch` -> `~/.config/neofetch/config.conf`
