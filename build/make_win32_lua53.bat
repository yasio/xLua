mkdir build32 & pushd build32
cmake -A Win32 ..
popd
cmake --build build32 --config MinSizeRel
md plugin_lua53\Plugins\x86
copy /Y build32\MinSizeRel\xlua.dll plugin_lua53\Plugins\x86\xlua.dll
pause