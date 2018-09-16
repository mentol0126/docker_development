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

# usage

起動

```
$ ./init sh
$ docker-compose up -d
```

確認

- [phpInfo](http://info.localhost:8080/)
- [phpMyAdmin](http://phpmyadmin.localhost:8080/index.php)

