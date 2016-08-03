class CommentsController < ApplicationController

  def create
    @comment = comments.create!(
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
