# ShareTax
# サービス概要

税理士業界で働き始めて間もない頃、業務上でつまづいた時にまわりに質問してもなかなか教えてもらえない、あるいは分からないといったことが多々ありました。　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
そこで、業界の浅い人材でも手軽に調べて解決できる情報共有サイトをあればと思い、作ったのがShareTaxです。

エンジニア界隈で言うと、QiitaやZennといったサービスを模範にしており、税理士業界やバックオフィス全般に関わる人達が自発的に調べられるように情報交換を
より活発にしていきたいというのが主な目的です。

# URL
52.197.21.151

テストユーザアカウント
* メールアドレス　test@example.com
* パスワード　test1234

# 開発環境

* Ruby2.6.3
* Ruby on Rails 5.2.8
* slim,scss
* jQuery
* PostgreSQL
* AWS(EC2,RDS,VPC)
* Docker

# 主な機能

* ユーザ登録、ログイン・ログアウト機能
* Google認証
* 投稿のCRUD機能
* いいね機能
* コメント機能
* 投稿の検索機能
* ページネーション機能

# 作成時に意識したこと
* ソースコードはGithub flowに沿って管理、品質管理はRSpecを導入することでより実務に沿った開発を意識しました。
* デプロイ環境の開発効率を向上させるため、既存のアプリをDockerを使って開発環境に導入しました。

# 拡張予定機能
* 独自ドメインの取得、SSL化
* 本番環境にDockerを導入 etc
