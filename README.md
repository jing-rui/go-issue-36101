# program to reproduce golang issue/36101 #

steps to reproduce crash:
1. Find an arm64 physical machine, because we tested on some virtual machine
   without crash.
2. Build using command: ./build.sh
3. The build script will generate 2 executable binary files. The main.json is
   build using golang std json library. The main.jsoniter is unmarshal using
   jsoniter library.
4. Run multiple process using command: nohup ./main.json config.json &
5. Wait for a while the process will crash.
6. We can compare by run multiple process using command: nohup ./main.jsoniter config.json &
7. wait for a long time, the main.jsoniter process will not crash.
