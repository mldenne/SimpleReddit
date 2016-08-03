class CommentsController < ApplicationController

  def create
    @comment = current_user.addendums.create!(
      link_id: params[:link_id],
      body: params[:comment][:body]
    )
    respond_to do |format|
      format.json {
        render :show, status: :created, location: [@comment.post, @comment]
      }
    end
  end

end
