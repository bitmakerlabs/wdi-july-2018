class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update

  end

  def index
    # TODO get info from the model
    @songs = Song.all
    # TODO give model info to the view
    render :index
  end

  def create
    # make song
    song = Song.new
    # TODO Get info from the form
    # params[:name]
    song.name = params[:song][:name]
    song.artist = params[:song][:artist]
    song.length = params[:song][:length]

    song.save

    # flash[:alert] = "Song saved!"

    # redirect somewhere useful
    redirect_to '/songs'
  end

  def new
    # TODO Provide any info the form needs
    @song = Song.new
  end
end
