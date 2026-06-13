# My Personal Vim Configuration

## Windows Housekeeping
### Ensure that a $HOME variable is set
1. Start\>Edit the system environment variables:
2. Click Enviro<ins>n</ins>ment Variables...

3. New:
HOME: `C:\Users\<USER>`

### To open new files in new tabs
1. Start\>Run\>regedit
2. Navigate to:
`Computer\HKEY_CLASSES_ROOT\Applications\gvim.exe\shell\edit\command`

3. Edit (Default) to be:
```
"C:\Program Files\Vim\vim92\gvim.exe" --remote-tab-silent "%1"
```
### As Tortoise Diff Viewer
1. Tortoise>Settings>Diff Viewer --> (click External)
2. `C:\Program Files\Vim\vim92\gvim.exe -d %base %mine`

## LSP Setup

### Install LSP Servers
Python
- (OS agnostic): ` pip3 install "python-lsp-server[all]" `
- Linux:
```
sudo apt install python3-pylsp
sudo dnf install python3-lsp-server
```

C++
- Linux: ` sudo apt install clangd `
- MacOS: ` brew install llvm `
- Windows: [Download the installer here](https://releases.llvm.org/download.html)

C#:
[Download from the releases page](https://github.com/OmniSharp/omnisharp-roslyn/releases)
- Linux:   omnisharp-linux-x64-net...
- MacOS:   omnisharp-osx-arm64-net...
- Windows: omnisharp-win-x64-net...
- vim-plug: `Plug 'OmniSharp/omnisharp-vim' `

### C/C++ Build Flags w/ CMake
clangd will look in the parent directories of the files you edit looking for it,
and also in subdirectories named `build/`.
For example, if editing `$SRC/gui/window.cpp`,
we search in `$SRC/gui/`, `$SRC/gui/build/`, `$SRC/`, `$SRC/build/`, …

Run this to do it:
```
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1
```
`compile_commands.json` will be written to your build directory.
If your build directory is `$SRC` or `$SRC/build`, clangd will find it.
Otherwise, symlink or copy it to `$SRC`, the root of your source tree.
```
ln -s ~/myproject-build/compile_commands.json ~/myproject/
```

## TODO:
- get clangd to work on MacOS --> and Windows
- remove diagnostic messages in pseudo lines
- get project behavior
    - understand working directory behavior
    - with vimgrep path
- Visual Studio solution file --> CMake only
- vim's make
- recent files?
