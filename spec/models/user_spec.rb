require 'rails_helper'

RSpec.describe User, type: :model do
  
 # ユーザー名、メール、パスワード、パスワード （確認）があれば有効な状態であること
 it "is valid with an username, email, password,and password_confirmation" do
  user = User.new(
    username: "hogehoge",
    email: "test.email@example.com",
    password: "test123456",
    password_confirmation: "test123456"
    )
    expect(user).to be_valid
 end
 
 # ユーザー名がなければ無効な状態であること
 it "is invalid without an username" do
  user = User.new(username: nil)
  user.valid?
  expect(user.errors.full_messages).to include("Eメール が入力されていません。", "パスワード が入力されていません。",
  "ユーザー名 が入力されていません。")
 end
 
 # ユーザー名がなければ無効な状態であること
 it "is invalid without an email" do
  user = User.new(email: nil)
  user.valid?
  expect(user.errors.full_messages).to include("Eメール が入力されていません。", "パスワード が入力されていません。",
  "ユーザー名 が入力されていません。")
 end
 
 # 重複したメールアドレスなら無効な状態であること
 it "is invalid with a duplicate email" do
  User.create(
    username: "hogehoge",
    email: "test.email@example.com",
    password: "test123456",
    password_confirmation: "test123456"
    )
  user = User.new(
    username: "hogehoge",
    email: "test.email@example.com",
    password: "test123456",
    password_confirmation: "test123456"
   )
  user.valid?
  expect(user.errors.full_messages).to include("Eメール は既に使用されています。")
 end
 
 
end
