# valgrind on macOS (EN)

## Description
This container provides a development environment specifically for 42 students.
In this environment, you can use the following **42-specific tools** on Apple Silicon macOS:

- **`valgrind`** - A tool for detecting memory leaks and debugging
- **`42header`** - Automatically adds headers compliant with the 42 coding standard
- **`c_formatter_42`** - Formats code according to the 42 coding standard
- **`norminette`** - Checks if the code adheres to the 42 coding standard

## Setup
1. Move to your working directory and run the following command to clone the `42` directory:
``` zsh
git clone git@github.com:gostachan/valgrind-on-macOS.git 42
```
1. Navigate to the 42 directory and configure your preferred initial settings in zshrc:
``` zsh
cd 42
```
``` zsh
vim zshrc
```
1. Start the Docker container:
``` zsh
docker compose up -d
```
1. Launch zsh inside the Docker container:
``` zsh
docker exec -it 42tokyo zsh
```

## Usage
### compile command
``` zsh
wcc hoge.c
```

### valgrind
``` zsh
vl ./hoge
```

### norminette
``` zsh
norminette hoge.c
```

### 42formatter
``` zsh
format hoge.c
```
``` zsh
format *.c
```

### 42header
``` zsh
header hoge.c
```
``` zsh
header *.c
```

# valgrind on macOS (JA)
## Description
このコンテナは42生用の開発ツールをまとめたコンテナです。
この環境では、以下の **42 専用ツール** をApple Silicon macOSで利用できます。
- **`valgrind`** - メモリリークの検出やデバッグを行うツール
- **`42header`** - 42のコーディング規約に準拠したヘッダーを自動追加
- **`c_formatter_42`** - コードフォーマットを42の規約に沿って整形
- **`norminette`** - コードが42の規約に準拠しているかをチェック

## Setup
1. 作業ディレクトリに移動し下記コマンドを実行して42ディレクトリをcloneします。
	``` zsh
	git clone git@github.com:gostachan/valgrind-on-macOS.git 42
	```
1. 42ディレクトリに移動し、zshrcに好みの初期設定を記述します
	``` zsh
	cd 42
	```
	``` zsh
	vim zshrc
	```
1. docker containerを起動します
	``` zsh
	docker compose up -d
	```
1. docker container で zsh を起動します
	``` zsh
	docker exec -it 42tokyo zsh
	```

## Usage
### compile command
``` zsh
wcc hoge.c
```

### valgrind
``` zsh
vl ./hoge
```

### norminette
``` zsh
norminette hoge.c
```

### 42formatter
``` zsh
format hoge.c
```
``` zsh
format *.c
```

### 42header
``` zsh
header hoge.c
```
``` zsh
header *.c
```
