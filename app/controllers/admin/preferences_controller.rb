class Admin::PreferencesController < ApplicationController
    def index 
        @artists = Artist.all 
        @songs = Song.all
    end
end