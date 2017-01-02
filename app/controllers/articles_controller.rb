class ArticlesController < ApplicationController

 def new
   @article = Article.new
 end

#Whatever we enter in to the form in the views file will be received by the create action.
 def create
  #  render plain: params[:article].inspect
   @article = Article.new(article_params)
   @article.save
   redirect_to articles_show(@article)
 end

 private
 def article_params
   params.require(:article).permit(:title, :description)
 end

end
