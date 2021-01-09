# Key bindings

## Tmux

Activate with `ctrl` `+` `b`.

### Sessions

- `s` lists sessions
- `d` detaches from session
- `(`, `)` switches to previous, next session

### Windows

- `c` opens new window
- `n`, `p` switches to next, previous window
- `&` closes current window
- `0-9` selects window by number

### Panes

- `;` opens last active pane
- `%`, `"` splits pane vertically, horizontally
- `{`, `}` moves pane left, right
- `arrow key` switches to pane in arrow key direction
- `q` shows pane numbers `+` `0-9` switches to a pane
- `z` zooms in a pane
- `ctrl` `+` `arrow key` resizes pane
- `o` switches to next pane
- `x` closes pane

## Vim

Default mode options:

- `0` goes to the beginning of the line
- `$` goes to the end of the line
- `^` goes to the first non empty char
- `${n}w`, `${n}b` goes n words forwards, backwards
- `G` moves to the end of the file
- `gg` moves to the beginning of the file
- `{`, `}` goes to previous, next paragraph
- `i` enters insert mode before cursor
- `a` enters insert mode after cursor
- `A` enters insert mode at the end of the line 
- `o` enters insert mode below cursor
- `O` enters insert mode above cursor
- `:%s/foo/bar/g/` replaces all occurences of *foo* with *bar*
- `gq` reformats text to 80 characters
- `Ex` opens file browser
- `e` opens file
- `Ctrl` + `w` + `{arrow}` to switch window focus
