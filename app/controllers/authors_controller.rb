class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    Author.update(params.require(:id), params.require(:author).permit(:name))
    redirect_to authors_path
  end
end
