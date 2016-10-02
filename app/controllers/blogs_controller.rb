class BlogsController < ApplicationController

  def index
  end

  def show
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
