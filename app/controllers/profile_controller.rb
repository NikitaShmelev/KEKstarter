class ProfileController < ApplicationController
  # before_action :set_profile, only: [:show]
  def show
    @profile = Profile.find_by(user_id: current_user.id)
    if @profile.nil?
      @profile = Profile.new(profile_params)
      @profile.user_id = current_user.id
      @profile.bio = 'Your best bio'
      @profile.save
      # return @profile
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.

  def profile_params
    params.permit(
      :user_id,
      :bio
    )
  end
end
