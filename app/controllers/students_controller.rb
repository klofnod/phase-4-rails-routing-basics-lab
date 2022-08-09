class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def grades
        render json: Student.all.sort{|a,b| b.grade <=>  a.grade}
    end

    def highest_grade
        render json: Student.all.max{|a,b| a.grade <=> b.grade}
    end
end
