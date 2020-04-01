class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "Barista Users Test API" }
    end
end
