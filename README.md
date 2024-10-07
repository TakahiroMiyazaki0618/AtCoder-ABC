- docker-compose up --build -d
- docker-compose exec -it atcoder /bin/bash
- acc login
- oj login https://atcoder.jp
- acc config default-task-choice all
- cd `acc config-dir`
- mkdir cpp
- cd cpp
- touch main.cpp
- vi main.cpp
```
#include <bits/stdc++.h>
using namespace std;
#include <atcoder/all>
using namespace atcoder;
#define rep(i,n) for (int i = 0; i < (int)(n); i++)
using ll = long long;
using ull = unsigned long long;
using vi = vector<int>;
using vvi = vector<vi>;
using P = pair<int, int>;

int main() {
  
  return 0;
}
```
- touch template.json
- vi template.json
```
{
  "task":{
    "program": ["main.cpp"],
    "submit": "main.cpp",
    "testdir": "test"
  }
}
```
- acc config default-template cpp
- acc new abc123
- 実装
- g++ main.cpp
- oj t
- acc s

[online-judge-tools](https://github.com/online-judge-tools/oj)  
[atcoder-cli](https://github.com/Tatamo/atcoder-cli?tab=readme-ov-file)  
[ac-library](https://github.com/atcoder/ac-library)  
[AtCoderのための環境作成](https://qiita.com/NaokiOsako/items/dcbc0a91e1bbca8ee45d)  
[Dockerを利用したローカルのAtCoder環境（C++）](https://zenn.dev/kinakomochi5250/articles/atcoder-cpp-docker)  