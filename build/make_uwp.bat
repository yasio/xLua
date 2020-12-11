mkdir build_uwp & pushd build_uwp
cmake -A Win32 -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=10.0 ..
popd
cmake --build build_uwp --config MinSizeRel
md plugin_lua53\Plugins\WSA\x86
copy /Y build_uwp\MinSizeRel\xlua.dll plugin_lua53\Plugins\WSA\x86\xlua.dll

mkdir build_uwp64 & pushd build_uwp64
cmake -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=10.0 ..
popd
cmake --build build_uwp64 --config MinSizeRel
md plugin_lua53\Plugins\WSA\x64
copy /Y build_uwp64\MinSizeRel\xlua.dll plugin_lua53\Plugins\WSA\x64\xlua.dll

mkdir build_uwp_arm & pushd build_uwp_arm
cmake -A ARM -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=10.0 ..
popd
cmake --build build_uwp_arm --config MinSizeRel
md plugin_lua53\Plugins\WSA\ARM
copy /Y build_uwp_arm\MinSizeRel\xlua.dll plugin_lua53\Plugins\WSA\ARM\xlua.dll

mkdir build_uwp_arm64 & pushd build_uwp_arm64
cmake -A ARM64 -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=10.0 ..
popd
cmake --build build_uwp_arm64 --config MinSizeRel
md plugin_lua53\Plugins\WSA\ARM64
copy /Y build_uwp_arm64\MinSizeRel\xlua.dll plugin_lua53\Plugins\WSA\ARM64\xlua.dll

pause
