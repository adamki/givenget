class ContentController < ApplicationController
  def new
    @content = Content.new
  end

  def submit
    @content = Content.new(content_params)
    if @content.save
      redirect_to content_path
    else
      redirect_to new_content
    end
  end

  def index
    @content = Content.all
  end

  def edit
    @content = Content.find(params[:id])
    byebug
  end

  private
  def content_params
    params.require(:content).permit(:name, :payload)
  end
end