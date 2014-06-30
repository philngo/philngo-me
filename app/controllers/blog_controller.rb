class BlogController < ApplicationController

  def index
   @posts = ["bezier","intro"] # recent first
   render "index", layout: "blog"
  end

  def show
    @post = params["id"]
    render "show", layout: "blog"
  end

end
