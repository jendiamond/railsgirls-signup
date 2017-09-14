
Cloudinary::Uploader.upload local_image_path("pizza.jpg")

tutorials_params[:trygit_image]

# TODO
# 1. Update the tutorials model to include image ids instead of image attachments
# 2. In our update action, we need to upload to Cloudinary, save ID to tut model
# 3. Update our tutorials view to use the clouderinary `cl_image_tag` to render the image

# Controller

def update
  if tutorials_params[:tryruby_image].present?
    image_id = Cloudinary::Uploader.upload(tutorials_params[:tryruby_image])
    @tutorials.update_attribute(:tryruby_image_id, image_id)
    
  else
    # other cases
  end
  
  render :edit
end

# View

cl_image_tag("#{@tutorials.trygit_image_id}.jpg")

SocketError in TutorialsController#update
Failed to open TCP connection to api.cloudinary.com:443 (getaddrinfo: Name or service not known)

Extracted source (around line #46):
44
45
46
47
48
49
              
  def update
    if tutorial_params[:tryruby_image].present?
      image_id = Cloudinary::Uploader.upload(tutorial_params[:tryruby_image])
      @tutorial.update_attribute(:tryruby_image_id, image_id)
    else
      # other cases
