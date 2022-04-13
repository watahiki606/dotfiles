# dotfiles

## インストール

```sh
make
```

### 手動設定

DropBoxに各アプリの設定ファイルがおいてある前提

#### alfred

- PowerPackのライセンスの入力
- advanced -> Syncing でDropBoxのファイルを指定

#### BetterTouchTool

- ライセンス入力
- 同期設定をオンにする

#### iTerm2

- 同期: General -> prefarences -> DropBoxの設定ファイルを指定
  
#### visual studio code

- setting sync is on にする

#### Google Japanese Input

- keymap -> keymap style -> Customize... -> Edit -> import from file -> DropBoxのファイルを指定

## キーバインド覚書

- vscode の emacs 拡張機能は使わず karabiner を使う。
- ウィンドウ最大化とかはBetterTouchTool を使う。

### quoted-insert キーの設定

- [ ] ctrl + q で quoted-insert

### universal-argument キーの設定

- [ ] ctrl + u で universal_argument

### ファイル操作

- [x] Ctl-x C-f find_file
- [x] Ctl-x C-s save_buffer
- [ ] Ctl-x C-w write_file
- [ ] Ctl-x d dired

### カーソル移動

- [x] C-b backward_char
- [x] C-f forward_char
- [x] M-b backward_word
- [x] M-f forward_word
- [x] C-p previous_line
- [x] C-n next_line
- [x] C-a move_beginning_of_line
- [x] C-e move_end_of_line
- [x] M-< beginning_of_buffer
- [x] M-> end_of_buffer
- [ ] M-g g goto_line
- [ ] M-g M-g goto_line
- [x] scroll_key[0] の設定値 scroll_up 初期値：M-v
- [x] scroll_key[1] の設定値 scroll_down 初期値：C-v
- [x] C-S-b mark + backward_char
- [x] C-S-f mark + forward_char
- [x] M-S-b mark + backward_word
- [x] M-S-f mark + forward_word
- [x] C-S-p mark + previous_line
- [x] C-S-n mark + next_line
- [x] C-S-a mark + move_beginning_of_line
- [x] C-S-e mark + move_end_of_line

### 「カット / コピー / 削除 / アンドゥ」のキー設定

- [x] C-h delete\*backward_char
- [x] C-d delete_char
- [ ] M-Delete backward_kill_word
- [x] M-d kill_word
- [x] C-k kill_line
- [x] C-w kill_region
- [x] M-w kill_ring_save
- [x] C-y yank
- [x] C-/ undo ->  command z
- [x] Ctl-x u undo ->  command z
- [ ] C-\* undo ->  command z
- [x] C-Space set_mark_command
- [x] Ctl-x h mark_whole_buffer -> command A
- [ ] Ctl-x C-p mark_page

### バッファ / ウィンドウ操作」のキー設定

- [ ] Ctl-x k kill_buffer
- [ ] Ctl-x b switch_to_buffer
- [ ] Ctl-x o other_window

### 「文字列検索 / 置換」のキー設定

- [x] C-r isearch_backward -> C-s からの C-S-m
- [x] C-s isearch_forward -> C-s からの C-m
- [ ] M-% query_replace

### 「その他」のキー設定

- [x] C-m newline
- [ ] C-j newline_and_indent
- [x] C-i tab
- [x] C-g keyboard_quit
- [x] Ctl-x C-c kill_emacs
- [ ] M-! shell_command

### IntelliJ

- キャレット追加(矩形選択)
  - command + 8(列選択モード) -> Shift ↑↓

### VScode

- command + opt + ↑↓ マルチカーソル
- command + shift + \ 対応する括弧にジャンプ
- command + opt + F ファイルの置換
- command + shift + H 全体を置換
- alt + shift + i 選択している行の末尾にマルチカーソル
- command + ctrl + shift + ↔　選択範囲を拡大/縮小

### BetterTouchTool

- command + ctrl + f ウインドウ最大化
- command + alt + ←→ ウインドウを左右に最大化

### slack

- command + shift + a 未読にジャンプ
