class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  # GET /links
  # GET /links.json
  def index
    @links = Link.joins('LEFT OUTER JOIN "votes" ON "votes"."link_id" = "links"."id"').distinct.select('"links".*, COUNT("votes"."id") as votes_count').order('votes_count DESC, "links"."created_at" DESC').group('"links"."id"').page(params[:page]).per(10)
  end

  # GET /links/1
  # GET /links/1.json
  def show
    @link = Link.find(params[:id])
  end

  # Rather than using show for this, maybe add a recent=true param to index? links?recent = true / if params[:recent]

  # GET /links/new
  def new
    @link = Link.new
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  # POST /links.json
  def create
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render :show, status: :created, location: @link }
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: 'Link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @link = Link.find(params[:id])
    @link.votes.create
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  def visit
    @link = Link.find(params[:id])
    @link.votes.create
    redirect_to(@link.url)
  end

  def downvote
    @link = Link.find(params[:id])
    @link.votes.first.destroy
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:title, :url, :user_id, :subreddit_id)
    end
end
