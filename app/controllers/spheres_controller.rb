class SpheresController < ApplicationController
    def new
        @sphere = Sphere.new
    end

    def create
        @sphere = Sphere.new(params.require(:sphere).permit(:title))
        @sphere.save
        redirect_to sphere_path(@sphere)

    end

    def show
        @sphere = Sphere.find(params[:id])
    end
end
