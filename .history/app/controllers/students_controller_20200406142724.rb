class StudentsController < ApplicationController
    before_action :find_student, only: [:show, :edit, :update]
    def new

    end

    def show
    end

    def create
        binding.pry
        @student = Student.new(post_params)  
        @student.save
        redirect_to student_path(@student)
    end

    def edit
    end

    def update
        @student.update(post_params)
        redirect_to student_path(@student)
    end



private
    def post_params
        params.require(:student).permit(:first_name, :last_name)
    end

    def find_student
        @student = Student.find(params[:id])
    end
end
