# アプリケーション名

**Your Quiz & Typing**

## アプリケーション概要

オリジナルの一問一答式クイズを作り、遊ぶことができます。

## URL

https://your-typing.herokuapp.com/

## テスト用アカウント
メールアドレス: *edo@test*  
パスワード: *edoedo*  
## 利用方法

ログインしている場合はクイズの作成とクイズプレイおよびクイズへのコメントができます。
未ログインだとクイズプレイのみができます。

# 目指している課題解決

学習事項に対して適切な一問一答形式の問題を必要としている学習者を対象とし、自らクイズを作って自分で利用できることを目的としました。  
また、他のユーザーにもクイズを公開できるようにすることで、他者から評価をもらえるようにし、学習意欲の向上を狙いました。

# 要件定義

## ユーザー登録機能・ログイン・ログアウト機能
ユーザー別にデータを管理するための機能。
## クイズ作成機能
ユーザーがオリジナルのクイズを作成できるようにするための機能。
## クイズ一覧表示機能
全てのユーザーが作成したクイズを一覧で確認できるようにするための機能。
## クイズプレイ機能
作ったクイズを実際に遊ぶことができる機能。
## クイズ編集機能
作ったクイズを訂正、もしくは問題を追加できる機能。
## クイズ削除機能
作ったクイズを削除する機能。
## ユーザー詳細表示機能
各ユーザーごとに作成したクイズを確認できる機能。
## クイズへのコメント機能
遊んだクイズへの感想を投稿できるようにする機能。
## コメント機能の非同期通信化
コメント反映の再読み込みを無くしてユーザーの使い勝手を良くするための機能。
## ユーザーアイコン登録機能
ユーザーを区別しやすくするための機能。
## ユーザー情報編集機能
ユーザー名、ユーザーアイコンを変更するための機能。
## クイズ作成時・編集時のポインタのオートフォーカス機能
クイズを効率よく作成・編集するための機能。
## クイズ入力欄のリセット機能
クイズを効率よく作成・編集するための機能。  
## 解答表示機能
クイズの回答に行き詰まった場合に素早く答えを確認するための機能。
## エラーメッセージの日本語化
なぜエラーが出ているのかをわかりやすくするための機能。
## コメント編集機能・削除機能
既に投稿したコメントを編集・削除するための機能。
## クイズプレイデータの保存機能
各クイズのプレイ状態を確認できるようにするための機能。
## クイズへのいいね機能
クイズを簡単に評価できる機能。
## クイズの並び替え機能
いいね数やプレイ回数などでクイズを並び替えることができる機能。
## クイズ一覧のページング機能
表示を分散して負荷を少なくするための機能。
## クイズへのタグ付け機能
クイズの内容をわかりやすくし、タグで絞り込めるようにするための機能。
## クイズのタグでの絞り込み機能
ユーザーが遊びたいクイズを効率よく見つけることができる機能。
## クイズの検索機能
自由な言葉でクイズを見つけることができる機能。

# 実装した機能
## ユーザー登録機能
[![Image from Gyazo](https://i.gyazo.com/c4db73a4933d290dc85f4aa023d5c215.gif)](https://gyazo.com/c4db73a4933d290dc85f4aa023d5c215)
## ログイン機能
[![Image from Gyazo](https://i.gyazo.com/9edc22127abf07726233363b3c2e7b1a.gif)](https://gyazo.com/9edc22127abf07726233363b3c2e7b1a)
## ログアウト機能
[![Image from Gyazo](https://i.gyazo.com/5ab021eedaa7e70a0eafe41cc16cf8e9.gif)](https://gyazo.com/5ab021eedaa7e70a0eafe41cc16cf8e9)
## クイズ作成機能
[![Image from Gyazo](https://i.gyazo.com/7debdba1c496d712f37b4c6bb056d3af.gif)](https://gyazo.com/7debdba1c496d712f37b4c6bb056d3af)
## クイズ一覧表示機能
[![Image from Gyazo](https://i.gyazo.com/5a910369acfa603aaa74802a3105e27b.png)](https://gyazo.com/5a910369acfa603aaa74802a3105e27b)
## クイズプレイ機能
[![Image from Gyazo](https://i.gyazo.com/b00a39ecee6ffc418a95c439d68d2757.gif)](https://gyazo.com/b00a39ecee6ffc418a95c439d68d2757)
## クイズ編集機能
[![Image from Gyazo](https://i.gyazo.com/e9a07fe381e3287af15980b4536aabac.gif)](https://gyazo.com/e9a07fe381e3287af15980b4536aabac)
## クイズ削除機能
[![Image from Gyazo](https://i.gyazo.com/6061c0d5cbc0e21903b70b8150377e15.gif)](https://gyazo.com/6061c0d5cbc0e21903b70b8150377e15)
## ユーザー詳細表示機能
[![Image from Gyazo](https://i.gyazo.com/e9e04ce8618ad748fc2d8426fb07b63b.gif)](https://gyazo.com/e9e04ce8618ad748fc2d8426fb07b63b)
## クイズへのコメント機能・コメント機能の非同期通信
[![Image from Gyazo](https://i.gyazo.com/1ac4551377d75e6eeb4e946d737492d3.gif)](https://gyazo.com/1ac4551377d75e6eeb4e946d737492d3)
## ユーザーアイコン登録機能
[![Image from Gyazo](https://i.gyazo.com/4a8843ef4e280bd6a882a8f96fa42b88.gif)](https://gyazo.com/4a8843ef4e280bd6a882a8f96fa42b88)
## ユーザー情報編集機能
[![Image from Gyazo](https://i.gyazo.com/6a7a3598d3dd487c6989e5c2b9389f46.gif)](https://gyazo.com/6a7a3598d3dd487c6989e5c2b9389f46)

# 今後実装予定の機能

クイズ作成時・編集時のポインタのオートフォーカス機能  
クイズ入力欄のリセット機能  
解答表示機能  
エラーメッセージの日本語化  
コメント編集機能・削除機能  
クイズプレイデータの保存機能  
クイズへのいいね機能  
クイズの並び替え機能  
クイズ一覧のページング機能  
クイズへのタグ付け機能  
クイズのタグでの絞り込み機能  
クイズの検索機能  

# ローカルで動作させる方法
### 開発に用いた環境
macOS Catalina 10.15.7  
ruby 2.6.5  
MySQL 5.6  
Rails 6.0.0  
Node.js  
yarn
### Githubからのクローン後にローカルで動作させる手順
```
% git clone https://github.com/t262g/your-typing
% cd your-typing
% bundle install
% yarn install
% rails db:create
% rails db:migrate
```
# データベース設計
## ER図
<img width="484" alt="スクリーンショット 2020-11-24 19 40 55" src="https://user-images.githubusercontent.com/62420846/100083991-8b768980-2e8d-11eb-8286-9ee4a68e3e88.png">　　

usersテーブルのimageカラムはActiveStorageを用いて実装。
## users テーブル

| Column   | Type   | Options                   |
| -------- | ------ | ------------------------- |
| nickname | string | null: false               |
| email    | string | null: false, unique: true |
| password | string | null: false               |

### Association

- has_many :quizzes
- has_many :comments

## quizzes テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| explanation | text       | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :quiz_lists
- has_many :comments

## quiz_lists テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| question | text       | null: false                    |
| answer   | string     | null: false                    |
| quiz     | references | null: false, foreign_key: true |

### Association

- belongs_to :quiz

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| quiz    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :quiz
