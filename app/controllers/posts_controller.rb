class PostsController < ApplicationController
  
  def new
    #空のモデルをビューへ渡す
    @post = Post.new
  end

  def create
    post = Post.new(post_params)      #ストロングパラメータを使用
    post.save                         #DBへ保存する
    redirect_to post_path(post.id)    # 詳細画面へリダイレクト
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])

  end

  def edit
    @post = Post.find(params[:id])

  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)

  end



#以下プライベートアクション
  private
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end

end
