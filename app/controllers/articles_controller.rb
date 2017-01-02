class ArticlesController < ApplicationController

 def new
   @article = Article.new
 end

#Whatever we enter in to the form in the views file will be received by the create action.
 def create
  @article = Article.new(article_params)
  if @article.save
    flash[:notice] = "Article was successfully created"
    redirect_to article_path(@article)
  else
    render 'new'
  end
  # This code was used in the beginning of making this create action
  #  @article.save
 end

 def show
   @article = Article.find(params[:id])
 end

 private
 def article_params
   params.require(:article).permit(:title, :description)
 end

end
