class LibrariesController < ApplicationController
  def index
    @libraries = if params[:limit].eql? 'abc'
                   Library.where('name LIKE ?', "#{params[:letter]}%")
                 elsif params[:name].present?
                   Library.where('name LIKE ?', "%#{params[:name]}%")
                 else
                   Library.all
                 end
  end

  def new
    @library = Library.new
    puts "@library: #{@library.nil?}"
  end

  def show
    @library = Library.find(params[:id])
  end

  def create
    @library = Library.create!(library_params)
    redirect_to libraries_path
  end

  def update
    @library = Library.find(params[:id])
    @library.update!(library_params)
    redirect_to library_path(@library)
  end

  def destroy
    @library = Library.find(params[:id]).destroy!
    redirect_to libraries_path
  end

  def library_params
    params.require(:library).permit(:name, :address, :phone)
  end
end
