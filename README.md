













# テーブル設計

## users テーブル

| Column                    | Type     | Options     |
| ---------------------     | -------- | ----------- |
| email                     | string   | null: false |
| encrypted_ password       | string   | null: false |
| name                      | string   | null: false |
| age                       | integer  | null: false |
| birthday                  | date     | null: false |


### Association

- has_one :personal

##  personal テーブル

| Column             | Type       | Options                        |
| ------------------ | ------     | ------------------------------ |
| nickname           | string     | null: false                    |
| profile            | text       | null: false                    |
| gender             | text       | null: false                    |
| image              |  ActiveStorageで実装                         |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :users

## comments テーブル

| Column             | Type       | Options                        |
| ------------------ | ------     | ------------------------------ |
| text               | text       | null: false                    |
| user               | references | null: false, foreign_key: true |
| prototype          | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :prototypes
