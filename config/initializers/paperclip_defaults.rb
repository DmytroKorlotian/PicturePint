Paperclip::Attachment.default_options.merge!(
    storage: :s3,
    s3_region: ENV['AWS_REGION'],
    s3_host_name: 's3-eu-central-1.amazonaws.com',
    s3_credentials: {
      bucket: ENV['AWS_BUCKET'],
      access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
    }
)