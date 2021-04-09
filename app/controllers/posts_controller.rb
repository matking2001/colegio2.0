class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: %i[update destroy edit]

  def index
    @posts = Post.order(created_at: :desc)
    @post = Post.new
  end

  def edit
  end


  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html {redirect_to posts_path, notice:"Noticia creada."}
      else
        format.html {redirect_to posts_path, alert:"No pudo ser creada la noticia."}
      end
    end
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:titulo, :fecha, :contenido)
    end
end
