class BlogController < ApplicationController

  def index
   render "index", layout: "blog"
  end

  def show
    index
  end

end
