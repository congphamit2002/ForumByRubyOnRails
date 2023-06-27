class RepliesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_reply, only: [:edit, :update, :show, :destroy]
    before_action :set_discussion, except: [:new]


    def new
    end

    def create
        @reply = @discussion.replies.create(params[:reply].permit(:reply, :discussion_id))
        @reply.user_id = current_user.id
        
        respond_to do |format|
            if @reply.save
                format.html {redirect_to discussion_path(@discussion)}
                format.js
            else
                format.html {redirect_to discussion_path(@discussion), notice: 'Reply did not save. Please try again.'}
                format.js
            end
        end
    end

    def edit
        @reply = @discussion.replies.friendly.find(params[:id])
    end

    def update
        @reply = @discussion.replies.friendly.find(params[:id])
        respond_to do |format|
            if @reply.update(reply_params)
                format.html {redirect_to discussion_path(@discussion), notice: 'Reply is successfully updated'}
                format.js
            else
                format.html {render :edit}
                format.json {render json: @reply.errors, status: :unprocessable_entity}
            end
        end
    end

    def destroy
        @reply = @discussion.replies.friendly.find(params[:id])
        @reply.destroy
        redirect_to discussion_path(@discussion)    
    end

    def show
    end

    private
    def set_reply
        @reply = Reply.friendly.find(params[:id])
    end
    
    def set_discussion
        @discussion = Discussion.friendly.find(params[:discussion_id])
    end

    def reply_params
        params.require(:reply).permit(:reply)
    end
end