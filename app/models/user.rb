class User < ApplicationRecord
  devise :database_authenticatable, #DBに保存するパスワードの暗号化（必須）
         :registerable, #サインアップ処理
         :recoverable, #パスワードリセット
         :rememberable, #クッキーにログイン情報を保持
         # :confirmable, #メール登録認証機能
         :trackable,   #サインイン回数、IPアドレス等を記録
         :validatable #メールアドレスとパスワードのバリデーション
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :username, presence: true
  mount_uploader :image, ImageUploader #モデルとアップローダーを紐づける
end
