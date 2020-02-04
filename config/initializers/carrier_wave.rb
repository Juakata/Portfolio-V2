CarrierWave.configure do |config|
    config.fog_provider = 'fog/google'
    config.fog_credentials = {
        provider: 'Google',
        google_storage_access_key_id: ENV['GOOGLE_STORAGE_ACCESS_KEY_ID'],
        google_storage_secret_access_key: ENV['GOOGLE_STORAGE_SECRET_ACCESS_KEY']
    }
    config.fog_directory = 'portfolio-segmento-1'
end
