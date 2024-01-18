class BookmarksController < ApplicationController

    before_action :set_list, only: [:new, :create]

    def new
      @bookmark = @list.bookmarks.build
    end

    def create
      @bookmark = @list.bookmarks.build(bookmark_params)
      if @bookmark.save
        redirect_to list_path(@list), notice: 'Bookmark was successfully added to the list.'
      else
        render :new
      end
    end

    def destroy
      @bookmark = Bookmark.find(params[:id])
      @bookmark.destroy
      redirect_to list_path(@bookmark.list), notice: 'Bookmark was successfully removed from the list.'
    end

    private

    def set_list
      @list = List.find(params[:list_id])
    end

    def bookmark_params
      params.require(:bookmark).permit(:movie_id, :comment)
    end
  
end
