class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # アップローダーでどんな種類のものを受け取るか指定
  storage :file

  # S3のディレクトリ名
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # 画像の上限をは500x500に設定
  process :resize_to_limit => [500, 500]

  # サムネイルを生成する設定
  version :thumb do
    process :resize_to_fill => [300, 300]
  end

  version :thumb100 do
    process :resize_to_fill => [100, 100]
  end

  version :thumb40 do
    process :resize_to_fill => [40, 40]
  end

  # 保存形式をjpgに設定
  process :convert => "jpg"

  # 許可する画像の拡張子
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  # デフォルト画像を設定
  def default_url
    "default.jpg"
  end

  # 拡張子が同じでないとGIFをJPGとかにコンバートできない
  def filename
    super.chomp(File.extname(super)) + ".jpg" if original_filename.present?
  end

  # ファイル名を日付にすると編集時のデータ受け渡し等で不具合が出るため、
  # ファイル名をランダムで一位にする
  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end

  protected

  # 一意となるトークンを作成
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end
end
