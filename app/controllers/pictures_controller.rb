class PicturesController < ApplicationController

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    if @picture.save

    else
      render :new
    end
  end

  def picture_params
    params.require(:picture).permit(:content, :image, :user_id)
  end
end
