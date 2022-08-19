Remove-Item .\bin\ -Recurse -Force
Remove-Item src/*.lib, src/*.dll -Force
cargo build
Copy-Item -Path .\target\debug\example.dll -Destination .\src\
Copy-Item -Path .\target\debug\example.dll.lib -Destination .\src\
shards build
Copy-Item -Path .\target\debug\example.dll -Destination .\bin\
Copy-Item -Path .\target\debug\example.dll.lib -Destination .\bin\
.\bin\rust-crystal-ffi-example.exe
Remove-Item src/*.lib, src/*.dll -Force