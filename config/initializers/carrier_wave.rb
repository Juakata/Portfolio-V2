CarrierWave.configure do |config|
    config.fog_provider = 'fog/google'
    config.fog_credentials = {
        provider: 'Google',
        google_storage_access_key_id: 'GOOG1EX7BOYWAPY5SDGIB3W73KX22N7FW47V4IZ5PLEWTGXSKJEG7ETMJOHHA',
        google_storage_secret_access_key: 'kn6ECOmOvq6fwrdlTSMxZuQnJSY0pmB3RpeGYq1s'
    }
    config.fog_directory = 'portfolio-segmento-1'
end
