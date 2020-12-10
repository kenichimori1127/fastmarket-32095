## usersテーブル (ユーザー情報)
| Column             | Type         | Options                              |
| ------------------ | ------------ | ------------------------------------ |
| nickname           | string       | null: false                          | <!--ニックネーム-->
| encrypted_password | string       | null: false                          | <!--パスワード-->
| email              | string       | null: false unique: true, index:true | <!--メールアドレス-->
| first_name         | string       | null: false                          | <!--名前-->
| family_name        | string       | null: false                          | <!--苗字-->
| first_name_kana    | string       | null: false                          | <!--名前(カナ)-->
| family_name_kana   | string       | null: false                          | <!--苗字(カナ)-->
| phone_number       | string       | null: false, foreign_key: true       | <!--電話番号-->

### Association
- has_many :reservations <!--1対多-->


## staffsテーブル (スタッフ情報)
| Column             | Type         | Options                              |
| ------------------ | ------------ | ------------------------------------ |
| staff_name         | string       | null: false                          | <!--スタッフの名前-->
| encrypted_password | string       | null: false                          | <!--パスワード-->

### Association

## reservationsテーブル (予約情報)
| Column           | Type         | Options                        |
| ---------------- | ------------ | ------------------------------ |
| user_id          | integer      | null: false, foreign_key: true |
| staff_id         |              |                                |
| date             | string       | null: false                    | <!--日付-->
| time             | text         | null: false                    | <!--時間-->

### Association
- belongs_to :user <!--1対1(参照元テーブル → 参照先テーブル)-->


## chatsテーブル (チャット)
| Column           | Type         | Options                        |
| ---------------- | ------------ | ------------------------------ |
| user_id          | integer      | null: false, foreign_key: true |
| staff_id         | integer      | null: false, foreign_key: true |
| text             | text         | null: false                    |

### Association
