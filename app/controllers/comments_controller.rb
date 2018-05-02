class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    #Comment.create(body: params[:comment][:body], article_id: article.id)
    #Comment.create(comments_params.merge({article_id: params[:article_id]}))
    article.comments.create(comments_params)
    flash[:success] = 'Thank you for your feedback'
    redirect_to article_path(article)
  end

  private
  def comments_params
    params.require(:comment).permit(:body)
  end

end
