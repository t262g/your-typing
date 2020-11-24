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

ユーザー登録機能
ログイン・ログアウト機能
クイズ作成機能
クイズ一覧表示機能
クイズプレイ機能
クイズ編集機能
クイズ削除機能
ユーザー詳細表示機能
クイズへのコメント機能
コメント機能の非同期通信化

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