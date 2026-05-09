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

## LSP Setup

### Install LSP Servers
Python
(OS agnostic):
```
pip3 install "python-lsp-server[all]"
```
Linux:
```
sudo apt install python3-pylsp
sudo dnf install python3-lsp-server
```

C++
- Linux: ` sudo apt install clangd `
- MacOS: ` brew install clangd `
- Windows: [Download the installer here](https://releases.llvm.org/download.html)

C#:
[Download from the releases page](https://github.com/OmniSharp/omnisharp-roslyn/releases)
- Linux:   omnisharp-linux-x64-net...
- MacOS:   omnisharp-osx-arm64-net...
- Windows: omnisharp-win-x64-net...
