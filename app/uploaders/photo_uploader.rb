# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  include ::CarrierWave::Backgrounder::Delay
end
