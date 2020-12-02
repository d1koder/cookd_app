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
      # @profile = Profile.find_by(user_id: current_user.id)
    end

    def show
      # @profile = Profile.find_by(user_id: current_user.id)
    end

    def update
      # @profile = Profile.find_by(user_id: current_user.id)
      respond_to do |format|
        if @profile.update(profile_params)
          format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      # @profile = Profile.find_by(user_id: current_user.id)
      @profile.destroy
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'Profile was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    def profile_params
        params.require(:profile).permit(:first_name, :last_name, :home_address, :mobile_number, :picture)
    end

    def set_profile
      @profile = Profile.find_by(user_id: current_user.id)
    end



    
end
