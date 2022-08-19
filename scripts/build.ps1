Remove-Item .\bin\ -Recurse -Force
Remove-Item src/*.lib, src/*.dll -Force
cargo clean
cargo build --release
Copy-Item -Path .\target\release\example.dll -Destination .\src\
Copy-Item -Path .\target\release\example.dll.lib -Destination .\src\
shards build
Copy-Item -Path .\target\release\example.dll -Destination .\bin\
Copy-Item -Path .\target\release\example.dll.lib -Destination .\bin\
.\bin\rust-crystal-ffi-example.exe
Remove-Item src/*.lib, src/*.dll -Force
