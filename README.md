# テーブル設計

## usersテーブル

| Column                | Type    | Options                   |
| --------------------- | ------- | ------------------------- |
| nickname              | string  | null: false               |
| email                 | string  | null: false, unique: true |
| encrypted_password    | string  | null: false               |
| gender_id             | integer | null: false               |
| user_age              | string  | null: false               |
| nationality_id        | integer | null: false               |
| occupation_id         | integer | null: false               |

### Association

- has_many :posts
- has_many :comments


## postsテーブル

| Column                     | Type       | Options           |
| -------------------------- | ---------- | ----------------- |
| title                      | string     | null: false       |
| post_text                  | text       | null: false       |
| user                       | references | foreign_key: true |
| to_national_id             | integer    | null: false       |

### Association

- belongs_to :user
- has_many :comments


## commentsテーブル

| Column       | Type       | Options           |
| ------------ | ---------- | ----------------- |
| comment_text | text       | null: false       |
| post_id      | references | foreign_key: true |
| user_id      | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :post