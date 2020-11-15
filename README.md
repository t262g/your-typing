# テーブル設計

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