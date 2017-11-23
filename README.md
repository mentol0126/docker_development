# 開発環境構成
- Debian 8.8
- Apache 2.4
- PHP 7.1
- MySQL 5.7

# ディレクトリ構成
- html
    - html配下がドキュメントルートに設定される
- web
    - Dockerfile -> WEBサーバ構築用Dockerfile
    - base.conf -> apache設定ファイル
    - php.ini -> php設定ファイル
- db
    - Dockerfile -> DBサーバ構築用Dockerfile
    - my.cnf -> MySQL設定ファイル
    - mysql_data -> DBデータ格納用ディレクトリ

# MySQLユーザ
- root/asdf1234

# Docker for Macの導入手順
1. [Docker公式](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac)の「Get Docker for Mac (Stable)」を押下し、インストールする
2. 画面上部のタスクアイコンよりDockerの起動を確認する
3. 下記コマンドを実行し、Docker類がインストールされたか確認する
```
docker --version
docker-compose --version
docker-machine --version
```

# 開発環境構築
1. 任意の作業ディレクトリ内にクローンする
2. コンテナをビルドする
```
docker-compose build
```
3. コンテナをバックグラウンドで起動する
```
docker-compose up -d
```
4. WEBとDBコンテナのStatusがUpであることを確認する
```
docker-compose ps
```
5. ブラウザ接続確認する
html配下がドキュメントルートになります。
サブドメインの指定でhtml配下のディレクトリを切り替えられます。
**port:8080**も**docker-compose.yml**内の**ports**で変更可能です。
```
例) html配下にsampleプロジェクトを作成した場合
http://sample.localhost:8080/
```

# その他コマンド
1. コンテナ名を確認する
```
docker-compose ps
```
※**docker-compose ps**で出力されるNameがコンテナ名です。
2. コンテナにログインする
```
docker exec -it コンテナ名 bash
```
3. コンテナを操作する
```
docker-compose [start/stop]
```
4. コンテナを削除する
```
docker-compose rm
```
