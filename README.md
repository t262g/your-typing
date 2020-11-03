# テーブル設計

| Column   | Type   | Options                   |
| -------- | ------ | ------------------------- |
| nickname | string | null: false               |
| email    | string | null: false, unique: true |
| password | string | null: false               |

## users テーブル

### Association

- has_many :titles

## titles テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| quiz_title  | string     | null: false                    |
| explanation | text       | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :quizzes

## quizzes テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| question | text       | null: false                    |
| answer   | string     | null: false                    |
| title    | references | null: false, foreign_key: true |

### Association

- belongs_to :title