class ChefsController < ApplicationController
    before_action :set_profile, only: [ :create ]

    #Get all chefs from database
    def index
        @chefs = Chef.includes(:profile).all
    end

    #New chef object 
    def new
        @chef = Chef.new
    end

    #Create new chef in database
    def create
        @chef = Chef.new(chef_params)
        @chef.profile_id = @profile.id

        if @chef.save!
          redirect_to chefs_path
        else
          render :new
        end
    end

    def edit
    end

    def show
    end

    def update
      respond_to do |format|
        if @chef.update(profile_params)
          format.html { redirect_to @chef, notice: 'Chef was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
        @chef.destroy
        respond_to do |format|
          format.html { redirect_to root_path, notice: 'Chef was successfully destroyed.' }
          format.json { head :no_content }
        end
      end
    end

    private

    #strong params for chef
    def chef_params
        params.require(:chef).permit(:year_experience, :price)
    end
    
    #set profile for chef
    def set_profile
      @profile = Profile.find_by(user_id: current_user.id)
    end

end
