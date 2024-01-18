class ListsController < ApplicationController

  def index
    @lists = List.includes(:bookmarks)
  end

  def show
    @list = List.find(params[:id])
  end

  def delete

  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
