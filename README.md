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

