class StaticPagesController < ApplicationController
    def index
        @quizes = Quiz.paginate(:page => params[:page], :per_page => 5)
    end
end
