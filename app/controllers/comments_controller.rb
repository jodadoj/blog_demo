class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
    end

    private
        def comment_paramsparams.require(:comment).permit(:commenter, :body, :status)
        end
end
