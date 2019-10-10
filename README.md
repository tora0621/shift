# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

usersテーブル
|column|type|option|
|------|----|------|
|email|string|null:false|
|password|string|null:false|
|username|strnig|null:false|
|grade|string|null:false|
### Association
- has_many :shifts
- hsa_many :commens

shiftsテーブル
|column|type|option|
|------|----|------|
|start_time|string||
|end_time|string||
|user_id|integer|null:false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments

commentsテーブル
|column|type|option|
|------|----|------|
|text|text||
|user_id|integer|null:false, foreign_key: true|
|shift_id|integer|null:false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :shift

