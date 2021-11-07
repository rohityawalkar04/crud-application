class PlayersController < ApplicationController
    before_action :require_login
    def index
        @players = Player.all
    end

    def new
        # created below for partial
        @player = Player.new
    end

    def create
        # fail
        # player.first_name = params['player']['first_name']
        # player.last_name = params['player']['last_name']

        player = Player.create(player_params)
        if player.save
            redirect_to "/players"
            # by doing below we are using rails helpers without using some string
            # redirect_to :root
            # redirect_to :root_path
        else
            flash[:errors] = player.errors.full_messages
            # redirect_to "/players/new"
            redirect_back(fallback_location: "/players/new")
        end
    end

    def show
        @player = Player.find(params[:id])
    end

    def edit
        @player = Player.find(params[:id])
    end

    def update
        player = Player.find(params[:id])
        if player.update(player_params)
            redirect_to "/players"
            # redirect_to :root
        else
            flash[:errors] = player.errors.full_messages
            # redirect_to "/players/#{player.id}/edit"
            # redirect_to player_edit_path(player.id)
            redirect_back(fallback_location: "/players/#{player.id}/edit")
        end
    end

    def destroy
        player = Player.find(params[:id])
        player.destroy
        redirect_to "/players"
        # redirect_to :root
    end

    private
    def player_params
        params.require(:player).permit(:first_name, :last_name)
    end
end