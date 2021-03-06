class ArticlesController < ApplicationController
before_action :set_article, only: [:edit, :update, :show, :destory]

def new
  @article = Article.new
end

def create
  @article = Article.new(article_params)
  if @article.save
      redirect_to articles_path(@article)
  else
      render 'new'
  end
end


def show
   #@article = Article.find(params[:id])
end

def update
   @article = Article.find(params[:id])

   if @article.update(article_params)
       flash[:notice] = 'Article was updated'
       redirect_to article_path(@article)
   else
     render 'edit'
   end
 end



def edit
  #@article = Article.find(params[:id])
end

  def index
    @articles = Article.all
  end
  
 
def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = 'Article was deleted'
    redirect_to articles_path
  end
private
    def article_params
      params.require(:article).permit(:title, :text)
    end
    
    def set_article
        @article = Article.find(params[:id])
    end
end
