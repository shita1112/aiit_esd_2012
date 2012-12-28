class Address2sController < ApplicationController
  # GET /address2s
  # GET /address2s.json
  def index
    @address2s = Address2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @address2s }
    end
  end

  # GET /address2s/1
  # GET /address2s/1.json
  def show
    @address2 = Address2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @address2 }
    end
  end

  # GET /address2s/new
  # GET /address2s/new.json
  def new
    @address2 = Address2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @address2 }
    end
  end

  # GET /address2s/1/edit
  def edit
    @address2 = Address2.find(params[:id])
  end

  # POST /address2s
  # POST /address2s.json
  def create
    @address2 = Address2.new(params[:address2])

    respond_to do |format|
      if @address2.save
        format.html { redirect_to @address2, :notice => 'Address2 was successfully created.' }
        format.json { render :json => @address2, :status => :created, :location => @address2 }
      else
        format.html { render :action => "new" }
        format.json { render :json => @address2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /address2s/1
  # PUT /address2s/1.json
  def update
    @address2 = Address2.find(params[:id])

    respond_to do |format|
      if @address2.update_attributes(params[:address2])
        format.html { redirect_to @address2, :notice => 'Address2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @address2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /address2s/1
  # DELETE /address2s/1.json
  def destroy
    @address2 = Address2.find(params[:id])
    @address2.destroy

    respond_to do |format|
      format.html { redirect_to address2s_url }
      format.json { head :no_content }
    end
  end
end
