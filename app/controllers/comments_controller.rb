class CommentsController < ApplicationController

  def index
  end

  def create
    @comment = Comment.create(
      link_id: params[:link_id],
      body: params[:comment][:body]
    )
    respond_to do |format|
      if @comment.save
        format.html { redirect_to link_path(id: params[:link_id]) }
      else
        format.html { render :new }
      end
    end
  end

end
