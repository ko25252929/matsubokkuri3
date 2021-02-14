##テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| nickname           | string | null: false              |
| email              | string | null: false,unique: true |
| encrypted_password | string | null: false              |
| age                | string | null: false              |


### Association

- has_many :tweet
- has_many :comment

##  tweet テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| title            | string     | null: false                    |
| text             | text       | null: false                    |
| user             | references | null: false                    |




### Association
- belongs_to :user
- has_one :comment



##  comment テーブル

| Column                   | Type       | Options                        |
| ------------------------ | -----------| ------------------------------ |
| comment                  | text       | null: false                    |
| user                     | references | null: false                    |
| tweet                    | references | null: false                    |



### Association
- belongs_to :user
- belongs_to :tweet

