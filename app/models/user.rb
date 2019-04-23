class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #DBに保存するパスワードの暗号化（必須）
         :registerable, #サインアップ処理
         :recoverable, #パスワードリセット
         :rememberable, #クッキーにログイン情報を保持
         :timeoutable, #一定時間活動していな場合にアカウントのセッションを破棄
        # :confirmable, #メール登録認証機能
         :trackable,   #サインイン回数、IPアドレス等を記録
         :validatable #メールアドレスとパスワードのバリデーション
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader #カラムの名前をmount_uploaderに指定

end
