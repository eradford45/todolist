class ListsController < ApplicationController
  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
     @list = List.new
  end

  def edit
    @list = List.find(params[:id])
  end

  def create
    list = List.create(list_params)
    if list.save
      redirect_to list_path(list)
    else
      render :new
    end
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      render :edit
    end
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to lists_path
  end
  private
  #Strong params
    def list_params
      params.require(:list).permit(:title, :author, :complete)
    end
end
