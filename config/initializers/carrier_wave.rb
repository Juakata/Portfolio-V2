CarrierWave.configure do |config|
    config.fog_provider = 'fog/google'
    config.fog_credentials = {
        provider: 'Google',
        google_storage_access_key_id: Rails.application.secrets.private_key_id,
        google_storage_secret_access_key: Rails.application.secrets.private_key
    }
    config.fog_directory = Rails.application.secrets.google_cloud_storage_bucket_name
end
