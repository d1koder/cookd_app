class ChefsController < ApplicationController
    before_action :set_profile, only: [ :create ]

    def index
        @chefs = Chef.all
    end

    def new
        @chef = Chef.new
    end

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
    end

    def detroy
    end

    private

    def chef_params
        params.require(:chef).permit(:year_experience, :price)
    end

    def set_profile
      @profile = Profile.find_by(user_id: current_user.id)
    end

end
