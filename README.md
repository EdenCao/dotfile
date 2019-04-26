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

* Closing the current buffer: `leader-b-d`
* Closing all of the buffers: `leader-b-a`
* Switch buffer: `leader-l` or `leader-h`

* tab new: `leader-tn`
* tab only: `leader-to`
* tab close: `leader-tc`
* tab move: `leader-tm`
* tab next: `leader-t-leader`

