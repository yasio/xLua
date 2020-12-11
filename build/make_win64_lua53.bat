mkdir build64 & pushd build64
cmake -A x64 ..
popd
cmake --build build64 --config MinSizeRel
md plugin_lua53\Plugins\x86_64
copy /Y build64\MinSizeRel\xlua.dll plugin_lua53\Plugins\x86_64\xlua.dll
pause