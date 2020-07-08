require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test? #開発とテストは今まで通りに
    config.storage = :file
  else
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',     #AWSのアクセスキーとシークレットキーを環境変数で定義する
      aws_access_key_id: Rails.application.credentials.aws ['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: Rails.application.credentials.aws ['AWS_SECRET_ACCESS_KEY'],
      region: "ap-northeast-1"
    }
    config.fog_directory  = 'chatspace600708'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/chatspace600708'
  end
end
