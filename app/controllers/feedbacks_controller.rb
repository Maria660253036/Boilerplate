class FeedbacksController < ApplicationController
    def index
        @feedbacks = Feedback.all
    end

    def new
        @feedback = Feedback.new
    end

    def create
        @feedback = Feedback.new(feedback_params)

        if @feedback.save
            redirect_to @feedback
        else
            render 'new'
        end 
    end 

    def edit
        @feedback = Feedback.find(params[:id])
    end 

    def update
        @feedback = Feedback.find(params[:id])

        if @feedback.update(feedback_params)
            redirect_to @feedback
        else
            render 'edit'
        end 
    end 

    def show
        @feedback = Feedback.find(params[:id])
    end 

    def destroy
        @feedback = Feedback.find(params[:id])
        @feedback.destroy

        redirect_to feedbacks_path
    end 

    private
        def feedback_params
            params.require(:feedback).permit(:name, :description)
        end 
end
