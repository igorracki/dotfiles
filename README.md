# ~/.*

## Dependencies

- ZSH -> https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
- Homebrew -> https://brew.sh

## Flavors

- => [master](https://github.com/igorracki/dotfiles)
  - Initial ZSH configuration for any environment
- [mac](https://github.com/igorracki/dotfiles/tree/mac)
  - ZSH configuration for MacOS
- [windows](https://github.com/igorracki/dotfiles/tree/win)
  - ZSH configuration for WSL

## Bat

### List `bat` Themes

```bash
bat --list-themes | fzf --preview="bat --theme={} --color=always config/.zprofile"
```

### Reload `bat`

```bash
bat cache --build
```
