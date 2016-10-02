class BlogsController < ApplicationController
    before_action :authenticate_user! 
end
