class PostIdeasController < ApplicationController
  # GET /post_ideas
  # GET /post_ideas.json
  def index
    @post_ideas = PostIdea.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @post_ideas }
    end
  end

  # GET /post_ideas/1
  # GET /post_ideas/1.json
  def show
    @post_idea = PostIdea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post_idea }
    end
  end

  # GET /post_ideas/new
  # GET /post_ideas/new.json
  def new
    @post_idea = PostIdea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post_idea }
    end
  end

  # GET /post_ideas/1/edit
  def edit
    @post_idea = PostIdea.find(params[:id])
  end

  # POST /post_ideas
  # POST /post_ideas.json
  def create
    @post_idea = PostIdea.new(params[:post_idea])

    respond_to do |format|
      if @post_idea.save
        format.html { redirect_to @post_idea, notice: 'Post idea was successfully created.' }
        format.json { render json: @post_idea, status: :created, location: @post_idea }
      else
        format.html { render action: "new" }
        format.json { render json: @post_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /post_ideas/1
  # PUT /post_ideas/1.json
  def update
    @post_idea = PostIdea.find(params[:id])

    respond_to do |format|
      if @post_idea.update_attributes(params[:post_idea])
        format.html { redirect_to @post_idea, notice: 'Post idea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_ideas/1
  # DELETE /post_ideas/1.json
  def destroy
    @post_idea = PostIdea.find(params[:id])
    @post_idea.destroy

    respond_to do |format|
      format.html { redirect_to post_ideas_url }
      format.json { head :no_content }
    end
  end
end
