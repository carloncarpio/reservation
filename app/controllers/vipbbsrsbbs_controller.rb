class VipbbsrsbbsController < ApplicationController
  # GET /vipbbsrsbbs
  # GET /vipbbsrsbbs.json
  def index
    @vipbbsrsbbs = Vipbbsrsbb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vipbbsrsbbs }
    end
  end

  # GET /vipbbsrsbbs/1
  # GET /vipbbsrsbbs/1.json
  def show
    @vipbbsrsbb = Vipbbsrsbb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vipbbsrsbb }
    end
  end

  # GET /vipbbsrsbbs/new
  # GET /vipbbsrsbbs/new.json
  def new
    @vipbbsrsbb = Vipbbsrsbb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vipbbsrsbb }
    end
  end

  # GET /vipbbsrsbbs/1/edit
  def edit
    @vipbbsrsbb = Vipbbsrsbb.find(params[:id])
  end

  # POST /vipbbsrsbbs
  # POST /vipbbsrsbbs.json
  def create
    @vipbbsrsbb = Vipbbsrsbb.new(params[:vipbbsrsbb])

    respond_to do |format|
      if @vipbbsrsbb.save
        format.html { redirect_to @vipbbsrsbb, notice: 'Vipbbsrsbb was successfully created.' }
        format.json { render json: @vipbbsrsbb, status: :created, location: @vipbbsrsbb }
      else
        format.html { render action: "new" }
        format.json { render json: @vipbbsrsbb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vipbbsrsbbs/1
  # PUT /vipbbsrsbbs/1.json
  def update
    @vipbbsrsbb = Vipbbsrsbb.find(params[:id])

    respond_to do |format|
      if @vipbbsrsbb.update_attributes(params[:vipbbsrsbb])
        format.html { redirect_to @vipbbsrsbb, notice: 'Vipbbsrsbb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vipbbsrsbb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vipbbsrsbbs/1
  # DELETE /vipbbsrsbbs/1.json
  def destroy
    @vipbbsrsbb = Vipbbsrsbb.find(params[:id])
    @vipbbsrsbb.destroy

    respond_to do |format|
      format.html { redirect_to vipbbsrsbbs_url }
      format.json { head :no_content }
    end
  end

  def visual
    @vipbbsrsbbs = Vipbbsrsbb.all
  end

  

end
