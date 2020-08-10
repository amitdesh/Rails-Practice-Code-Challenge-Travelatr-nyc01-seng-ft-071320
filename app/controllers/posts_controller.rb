class PostsController < ApplicationController
    before_action :find_post, except: [:new, :create]

    def show; end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to post_path(@post)
    end

    def edit; end

    def update
        @post.update(post_params)
        redirect_to post_path(@post)
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, :likes)
    end

    def find_post
        @post = Post.find(params[:id])
    end
end