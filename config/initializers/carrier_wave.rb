if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'

    config.fog_credentials = {

      :provider              => 'AWS',
      :aws_access_key_id     => 'AKIAWG3N35XEC5WKF6M4',
      :aws_secret_access_key => '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'
    }
    config.fog_directory     =  ENV['S3_BUCKET']

  end
end