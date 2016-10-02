class BlogsController < ApplicationController
    before_action :authenticate_user! 
end
	def show
		@blog = Blog.find(params[:id])
	end

  private
    def blog_params
      params.require(:blog).permit(:title, :content)
    end
end
