class SchoolClassesController < ApplicationController

    def new
        @class = SchoolClass.new
        render 'form'
    end

    def create
        @class = SchoolClass.new
        @class.title = params[:school_class][:title]
        @class.room_number = params[:school_class][:room_number]
        @class.save
        #binding.pry
        redirect_to school_class_path(@class)
    end

    def show
        @class = SchoolClass.find(params[:id])
    end

    def edit
        @class = SchoolClass.find(params[:id])
        render 'edit'    
    end

    def update
        @class = SchoolClass.find(params[:id])
        @class.update(class_params)
        redirect_to school_class_path(@class)
    end
    

    private

    def class_params(*args)
        params.require(:school_class).permit(:title, :room_number) 
    end
end
