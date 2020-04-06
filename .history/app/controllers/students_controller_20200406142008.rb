class StudentsController < ApplicationController
    before_action :find_student, only: [:show, :edit, :update]
    def new

    end

    def show
    end

    def create
        @school_class = SchoolClass.new(post_params)  
        redirect_to school_class_path(@school_class)
    end

    def edit
    end

    def update
        @school_class.update(post_params)
        redirect_to school_class_path(@school_class)
    end



private
    def post_params
        params.require(:student).permit(:first_name, :last_name)
    end

    def find_school_class
        @school_class = SchoolClass.find(params[:id])
    end
end
