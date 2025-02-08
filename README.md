# valgrind on macOS (EN)
## Description
This repository provides Docker configuration files for using `valgrind` on macOS.
Since `valgrind` is no longer officially supported on macOS, this setup allows you to
create an Ubuntu-based environment using Docker to perform memory leak detection
and debugging.

This repository includes the following files:
- **`Dockerfile`** : Builds an Ubuntu-based environment and installs `valgrind`
- **`docker-compose.yml`** : Manages container startup and configuration
- **`srcs/`** : Directory for volume mounting (file sharing between the host and the container)

With this setup, you can easily run `valgrind` on macOS.

---

## Usage

1. Navigate to your working directory and run the following command to clone the repository into the `42` directory:
   ```sh
   git clone git@github.com:gostachan/valgrind-on-macOS.git 42
	```
1. Move into the 42 directory and customize zshrc as needed:
	``` sh
	cd 42
	```
	``` sh
	vim zshrc
	```
1. Start the Docker container:
	``` sh
	docker compose up -d
	```
1. Access the container and start zsh:
	``` sh
	docker exec -it 42tokyo zsh
	```
1. Write your program inside 42/srcs/* on the host machine and run it inside the container to use valgrind.


# valgrind on macOS (JA)
## Description
このリポジトリは、macOS 上で `valgrind` を利用するための Docker 設定ファイルをまとめたものです。
macOS では `valgrind` の公式サポートが終了しているため、Docker を使用して Ubuntu 環境を構築し、
メモリリークの検出やデバッグを行うことができます。

このリポジトリには、以下のファイルが含まれています：
- `Dockerfile` : Ubuntu ベースの環境を構築し、`valgrind` をインストール
- `docker-compose.yml` : コンテナの起動・設定を管理
- `srcs/` : ボリュームマウント用のディレクトリ（ホストとのファイル共有）

このセットアップを使用することで、macOS でも簡単に `valgrind` を動作させることが可能になります。

## Usage
1. 作業ディレクトリに移動し下記コマンドを実行して42ディレクトリをcloneします。
	``` sh
	git clone git@github.com:gostachan/valgrind-on-macOS.git 42
	```
1. 42ディレクトリに移動し、zshrcに好みの初期設定を記述します
	``` sh
	cd 42
	```
	``` sh
	vim zshrc
	```
1. docker containerを起動します
	``` sh
	docker compose up -d
	```
1. docker container で zsh を起動します
	``` sh
	docker exec -it 42tokyo zsh
	```
1. host の 42/srcs/* にプログラムを記述し、container で実行することでvalgrindが利用できます
