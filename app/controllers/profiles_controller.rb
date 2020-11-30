class ProfilesController < ApplicationController
  before_action :set_profile, except: [:create, :new]

    def new
        @profile = Profile.new
    end

    def create
        @profile = Profile.new(profile_params)
        @profile.user_id = current_user.id

        if @profile.save!
          redirect_to profile_path(@profile.id)
        else
          render :new
        end
    end

    def edit
    end

    def show
    end

    def update
    end

    def detroy
    end

    private

    def profile_params
        params.require(:profile).permit(:first_name, :last_name, :home_address, :mobile_number)
    end

    def set_profile
      @profile = Profile.find_by(user_id: current_user.id)
    end
end
