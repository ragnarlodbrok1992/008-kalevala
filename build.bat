REM @echo off
SET compiler_dir="C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.31.31103\bin\Hostx64\x64\cl.exe"

echo Building...

%compiler_dir% /EHsc /Zi^
  /std:c++17^
  /nologo^
  /DEBUG:FULL^
  /INCREMENTAL:NO^
  /Fe:"kalevala"^
  src/kalevala.cpp^
  /link gdi32.lib User32.lib Shell32.lib kernel32.lib

