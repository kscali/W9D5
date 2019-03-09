class AlbumsController < ApplicationController

    def new
        @album = Album.new
        @band = Band.all
        render :new
    end

    def create
        @album = Album.new(album_params)
        if @album.save
            redirect_to album_url(@album)
        else
            flash.now[:errors] = @album.errors.full_messages
            render :new
        end
    end

    def edit
        @album = Album.find(params[:id])
        @band = Band.all
        render :edit
    end

    def show
        @album = Album.find(params[:id])
        render :show
    end
    
    def update
        @album = Album.find(params[:id])
        # @album.band_id = 
        if @album.update(album_params)
            redirect_to band_url(@album.band)
        else
            flash.now[:errors] = @album.errors.full_messages
            render :edit
        end
    end

    def destroy

    end

    private

    def album_params
        params.require(:album).permit(:band_id,:title, :year, :live)
    end



end
