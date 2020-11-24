# アプリケーション名

Your Quiz & Typing

# アプリケーション概要

オリジナルの一問一答式クイズを作り、遊ぶことができます。

# URL

https://your-typing.herokuapp.com/

# テスト用アカウント

# 利用方法

ログインしている場合はクイズの作成とクイズプレイおよびクイズへのコメントができます。
未ログインだとクイズプレイのみができます。

# 目指している課題解決

記憶したいことの一問一答式のクイズをユーザーが自分で作ることができ、学習の補助として使うことができます。

# 要件定義

## ユーザー登録機能・ログイン・ログアウト機能
ユーザー別にデータを管理するための機能。
## クイズ作成機能
ユーザーがオリジナルのクイズを作成できるようにするための機能。
## クイズ一覧表示機能
全てのユーザーが作成したクイズを確認できるようにするための機能。
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
## エラーメッセージの日本語化
なぜエラーが出ているのかをわかりやすくするための機能。
## コメント編集機能・削除機能
既に投稿したコメントを編集・削除するための機能。
## クイズプレイデータの保存機能
## クイズへのいいね機能
## クイズの並び替え機能
## クイズ一覧のページング機能
## クイズへのタグ付け機能
## クイズのタグでの絞り込み機能

# 実装した機能

# 今後実装予定の機能

# ローカルで動作させるには

# データベース設計

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
