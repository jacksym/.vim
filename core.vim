
let s:environment_configure='C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat x64 10.0.14393.0 -vcvars_ver=14.0'

let s:gen_comp_json='-DCMAKE_EXPORT_COMPILE_COMMANDS=1'

let s:build_command='cmake --build' . shellescape(g:source_dir)
