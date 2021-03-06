class BlogController < ApplicationController

  @@posts = ["hexagons-triangles",
             "disaggregation",
             "dssg-intro",
             "bezier",
             "intro"] # recent first

  def index
    @posts = @@posts
    render "index", layout: "blog"
  end

  def show
    @posts = @@posts
    @post = params["id"]
    render "show", layout: "blog"
  end

end
