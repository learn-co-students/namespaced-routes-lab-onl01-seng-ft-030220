class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.first
  end

  def update
    @preference = Preference.first
    @preference.update(pref_params)
    redirect_to admin_preferences_path
  end

  private

  def pref_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists)
  end
end