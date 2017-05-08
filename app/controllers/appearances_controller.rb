class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end

    def create
        @guest = Guest.find(params[:guest_id])
        @episode = Episode.find(params[:episode_id])
        @appearance = Appearance.create(guest_id: @guest.id, episode_id: @episode.id, rating: params["rating_id"])
        redirect_to appearance_path(@appearance)

    end

    def show
        @appearance = Appearance.find(params[:id])
        @guests = Guest.where(id: @appearance.guest_id)
        @episode = Episode.find(@appearance.episode_id)
    end

end
