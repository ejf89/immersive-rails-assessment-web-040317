class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
      @episode = Episode.find(params[:id])
      @apps = Appearance.where(episode_id: @episode.id)
      @guests =  @apps.collect {|app| app.guest_id}
  end

end
