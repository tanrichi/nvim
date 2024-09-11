# **My Simplified Neovim Cheatsheet**

## **__VIM COMMANDS__**
* `:w` Save
* `:q` Quit
* `:wq` Save and quit
* `:q!` Quitting without saving

## **__MODES__**
* Normal `Esc`
* Insert `i`
* Visual `v`
* Command `:`

## **__MOTION ANATOMY__**
**Command + Count + Motion**
* Commands: (optional) Operation to do 
* Count: (optional) Number of character, words or line to do the motion
* Motion: move cursor

## **__NORMAL COMMANDS__**
* `d` Delete
* `c` Change
* `y` Yank
* `p` Paste
* `u` Undo
* `<C-r>` Redo previous action

**__Delete__**
* `dd` Delete line
* `dw` Delete word
* `d3j` Delete current line and 3 lines below
* `d0` or`d$` Delete from cursor all the way to the beginning / end of line
* `df<char>` Delete from cursor to next <char>
* `dt<char>` Delete from cursor UP TO next <char>
* `d2f<char>` Delete from cursor to the second forward appearance of <char>

**__Change__**
* `c` Delete specified text and enter insert mode
* `cw` Delete from the cursor position to the beginning of the next word and enter insert mode
* `ciw` Change inner word and enter insert mode
* `caw` Change word (includes trailling space) and enter insert mode

**__Yank__**
* `yy` Yank line
* `y5j` Yank line and 5 lines below
* `yt<char>` Yank forward up to <char>
* `yF<char>` Yank backward to <char>

<br>

* Remapped: `<leader>y`  Copy to vim buffer 
* Remapped: `<leader>Y` Copy to clipboard

## **__Visual__**
* `v` Enter visual mode
* `V` Select line
* `vt<char>` Select up to <char>
* `vF<>` Select backward to <char>

## **__Text Edition__**:
* `<leader>d`  Delete text without yanking
* `J` Join line below with current select line

## **__Vertical Motions__**:
* `<number>j` or `<number>k` To up or down <number> of lines

<br>

* `<C-d>` and `<C-u>` Jump half a page

<br>

* `G` Go all the way down to the bottom of the file
* `gg` Go all the way up to the top

<br>

* `:<number>` Jump to line <number>

## **__Horizontal Motions__**:
* `w` Goes to next word
* `b` Goes to the previous word
* `e` Goes in front of the next word

<br>

* `_` Goes to beginning of the first character
* `$` Goes to the end
* `0` Goes to the beginning of the line (position 0) 

<br>

* `f<char>` or  `F<char>`  Goes ON the next forward OR previous <char> found
* `t<char>` or `T<char>`  Goes UP TO the next forward or PREVIOUS <char> found
* `,` or `;` Repeat last jump forward / backward

## **__INSERT MODE__**
* `i` Go to insert mode with the cursor set before the selected character
* `a` Go to insert mode with the cursor set after the selected character
* `I` Go to insert mode with cursor at the beginning of the line
* `A` Go to insert mode with cursor at the end of the line
* `o` Go to insert mode in new line below cursor
* `O` Go to insert mode in new line above cursor

## **__Search__**
* `/<input>`  Search <input> in file
* `*` Search for word under cursor

<br>

* `n` Search forward
* `N` Search backward

## **Netrw**
* `Ex:` Open file explorer
* `-` Go to parent directory
* `Dy` Delete file

