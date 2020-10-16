READ.ME
# テーブル設計


## users テーブル

| Column     | Type   | Options     |
| --------   | ------ | ----------- |
| name       | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| password   | text   | null: false |


### Association

- has_many :phototypes
- has_many :comments

## prototypes テーブル

| Column     | Type      | Options                        |
| --------   | --------  | ------------------------------ |
| title      | string    | null: false                    |
| catch_copy | text      | null: false                    |
| concept    | text      | null: false                    |
| user       | reference | null: false, foreign_key: true |

### Association

- has_many :comments
- belongs_to :user

## comments テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| text       | text       | null: false                    |
| user       | references | null: false, foreign_key: true |
| prototypes | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :phototypes

