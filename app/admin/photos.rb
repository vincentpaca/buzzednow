ActiveAdmin.register Photo do
  form do |f|
    f.inputs do
      f.input :item
      f.input :public, as: :file, input_html: { multiple: true }
    end
    f.buttons
  end

  controller do
    def create
      params[:photo][:public].each do |p|
        Uploader.perform_async(p, params[:photo][:item_id])
      end

      flash[:notice] = "Processing images, please wait"
      redirect_to admin_photos_url
    end
  end
end
