class SchoolClassesController < ApplicationController



private
def post_params
    params.require(:school_class).permit
end
