class SchoolClassesController < ApplicationController
    def new

    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end



private
    def post_params
        params.require(:school_class).permit(:title, :room_number)
    end
end
