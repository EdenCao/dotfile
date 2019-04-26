# My VIMRC

## Plugin Manager

Use [vim-plug](https://github.com/junegunn/vim-plug)

## Preparing
* Fonts: [Dank Mono](https://dank.sh)
* python3(used by deoplete)
```sh
brew install python3
pip3 install --user pynvim
```
* neovim + typescript global installed by node(used by typescript language supported)
```sh
brew install node #if node not installed yet
brew install yarn #yarn is a good choice to manage your package
yarn global add typescript neovim
```
* gvim(get better experience, i used macvim)
```sh
brew cask install macvim
```

## Key Binding

* LeaderKey: `;`

### Basic

About saving
* Fast saving: `leader-w`
* Saving with sudo: `leader-W`

About search
* searches for the current selection: `*` or `#`
* searches for the regex: `space` or `ctrl-space`

Moving around, tabs, windows and buffers
* Moving between windows: `ctrl-j` or `ctrl-k` or `ctrl-h` or `ctrl-l`

* Closing the current buffer: `leader-bd`
* Closing all of the buffers: `leader-ba`
* Switch buffer: `leader-l` or `leader-h`

* tab new: `leader-tn`
* tab only: `leader-to`
* tab close: `leader-tc`
* tab move: `leader-tm`
* tab next: `leader-t-leader`
* toggle between this and the last accessed tab: `leader-tl`

* Opens a new tab with the current buffer's path: `leader-te`
* Switch CMD to the directory of the open buffer: `leader-cd`

Editing mappings
* Move a line of text: `Meta-j` or `Meta-k` or `Meta-h` or `Meta-l`

Spell Checking
* toggle spell checking: `leader-ss`
* moving between errors: `leader-sn` or `leader-sp` 
* add word to dictionary: `leader-sa`
* change word: `leader-s?` 

Misc
* Remove the Windows ^M - when the encodings gets messed up: `leader-m`
* Quickly open a buffer for scribble: `leader-q`
* Quickly open a markdown for scribble: `leader-e`

* Toggle paste mode on and off: `leader-pp`
