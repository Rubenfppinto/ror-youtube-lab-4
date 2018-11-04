class PostsController < ApplicationController
    def index

    end

    def new

    end

    def create
        # render plain: params[:post].inspect

        @post = Post.new(params[post_params]) #access the private method post_params

        @post.save
        redirect_to @post
    end

    private def post_params
        params.require(:post).permit(:title, :body) #restricts the form to only take a title and a body
    end
end
