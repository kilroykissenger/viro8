class FluxesController < ApplicationController
  # GET /fluxes
  # GET /fluxes.json




  def vote_up
    @flux  = Flux.find(params[:id])

    if !session[:votes].include? @flux.id
      session[:votes].push @flux.id
      @flux.score = @flux.score + 1
      @flux.save
    end

    redirect_to :back
  end

  def index
    @fluxes = Flux.all
    @fluxes = Flux.find(:all).sort!{|f1,f2|f2.score <=> f1.score}

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fluxes }
    end
  end

  # GET /fluxes/1
  # GET /fluxes/1.json
  def show
    @flux = Flux.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flux }
    end
  end

  # GET /fluxes/new
  # GET /fluxes/new.json
  def new
    @flux = Flux.new
    @flux.party_id = params[:party_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flux }
    end
  end

  # GET /fluxes/1/edit
  def edit
    @flux = Flux.find(params[:id])
  end

  # POST /fluxes
  # POST /fluxes.json
  def create
    @flux = Flux.new(params[:flux])

    respond_to do |format|
      if @flux.save
        format.html { redirect_to @flux, notice: 'Flux was successfully created.' }
        format.json { render json: @flux, status: :created, location: @flux }
      else
        format.html { render action: "new" }
        format.json { render json: @flux.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fluxes/1
  # PUT /fluxes/1.json
  def update
    @flux = Flux.find(params[:id])

    respond_to do |format|
      if @flux.update_attributes(params[:flux])
        format.html { redirect_to @flux, notice: 'Flux was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flux.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fluxes/1
  # DELETE /fluxes/1.json
  def destroy
    @flux = Flux.find(params[:id])
    @flux.destroy

    respond_to do |format|
      format.html { redirect_to fluxes_url }
      format.json { head :no_content }
    end
  end
end
