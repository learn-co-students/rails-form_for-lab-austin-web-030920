class SchoolClassesController < ApplicationController
    def new

    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def create
        @school_class = SchoolClass.new
        @school_class.title = params[:school_class][:title]
        @school_class.room_number = params[:school_class][:room_number]
    end



private
    def post_params
        params.require(:school_class).permit(:title, :room_number)
    end
end
