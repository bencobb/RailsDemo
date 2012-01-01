class PostsController < ApplicationController # GET /posts
  respond_to :html
  before_filter :get_post, :except => [:index, :create]

  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])
    @post.save
    flash[:notice] = "Added succesfully"
    respond_with(@post)
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    flash[:notice] = "Updated succesfully"
    respond_with(@post)
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_with(@post)
  end

  private
    def get_post
      @post = params[:id].present? ? Post.find(params[:id]) : Post.new
    end
end
