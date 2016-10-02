class BlogsController < ApplicationController
before_action :authenticate_user!

  def index
  end

  def show
		@blog = Blog.find(params[:id])
	end

  def new
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end
  

  private
    def blog_params
      params.require(:blog).permit(:title, :content)
    end
end
