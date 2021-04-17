# DB設計

## users テーブル

| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| email     | string | null: false |
| password  | string | null: false |
| name      | string | null: false |
| profile   | text   | null: false |
| occupation| text   | null: false |
| position  | text   | null: false |
### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column           | Type       | Options           |
|------------------|------------|-------------------|
| title            | string     | null: false       |
| catch_copy       | text       | null: false       |
| concept          | text       | null: false       |
| user             | references | foreign_key: true |


### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

## comments table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| text        | text       | null: false       |
| prototype   | references | foreign_key: true |
| user        | references | foreign_key: true |

### Association

- belongs_to :prototype
- belongs_to :user


・コメントのマイグレーションファイルを作成したかを一度、ご確認いただく
→　作成して消えている場合は、削除したファイルが残っていないか確認していただく
→　作成をしてい無い場合はマイグレーションファイルの作成方法を調べる、または別のアプリからコメントのマイグレーションファイルをコピーしてくる
