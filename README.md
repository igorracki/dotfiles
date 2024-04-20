# ~/.*

## Bat

### List `bat` Themes

```bash
bat --list-themes | fzf --preview="bat --theme={} --color=always config/.zprofile"
```

### Reload `bat`

```bash
bat cache --build
```
