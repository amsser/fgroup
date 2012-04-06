class H1sController < ApplicationController
  # GET /h1s
  # GET /h1s.json
  def index
    @h1s = H1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @h1s }
    end
  end

  # GET /h1s/1
  # GET /h1s/1.json
  def show
    @h1 = H1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @h1 }
    end
  end

  # GET /h1s/new
  # GET /h1s/new.json
  def new
    @h1 = H1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @h1 }
    end
  end

  # GET /h1s/1/edit
  def edit
    @h1 = H1.find(params[:id])
  end

  # POST /h1s
  # POST /h1s.json
  def create
    @h1 = H1.new(params[:h1])

    respond_to do |format|
      if @h1.save
        format.html { redirect_to @h1, notice: 'H1 was successfully created.' }
        format.json { render json: @h1, status: :created, location: @h1 }
      else
        format.html { render action: "new" }
        format.json { render json: @h1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /h1s/1
  # PUT /h1s/1.json
  def update
    @h1 = H1.find(params[:id])

    respond_to do |format|
      if @h1.update_attributes(params[:h1])
        format.html { redirect_to @h1, notice: 'H1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @h1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /h1s/1
  # DELETE /h1s/1.json
  def destroy
    @h1 = H1.find(params[:id])
    @h1.destroy

    respond_to do |format|
      format.html { redirect_to h1s_url }
      format.json { head :no_content }
    end
  end
end
