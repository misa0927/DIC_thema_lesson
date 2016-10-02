class BlogsController < ApplicationController
  private
    def blog_params
      params.require(:blog).permit(:title, :content)
    end
end
