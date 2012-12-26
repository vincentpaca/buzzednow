class Uploader
  include Sidekiq::Worker

  def perform(p, item_id)
    response = Cloudinary::Uploader.upload(p)
    Photo.create(:public => response["public_id"], :item_id => item_id)
  end
end
