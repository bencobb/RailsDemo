class AddStatusesController < ApplicationController
  # GET /add_statuses
  # GET /add_statuses.json
  def index
    @add_statuses = AddStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @add_statuses }
    end
  end

  # GET /add_statuses/1
  # GET /add_statuses/1.json
  def show
    @add_status = AddStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @add_status }
    end
  end

  # GET /add_statuses/new
  # GET /add_statuses/new.json
  def new
    @add_status = AddStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @add_status }
    end
  end

  # GET /add_statuses/1/edit
  def edit
    @add_status = AddStatus.find(params[:id])
  end

  # POST /add_statuses
  # POST /add_statuses.json
  def create
    @add_status = AddStatus.new(params[:add_status])

    respond_to do |format|
      if @add_status.save
        format.html { redirect_to @add_status, :notice => 'Add status was successfully created.' }
        format.json { render :json => @add_status, :status => :created, :location => @add_status }
      else
        format.html { render :action => "new" }
        format.json { render :json => @add_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /add_statuses/1
  # PUT /add_statuses/1.json
  def update
    @add_status = AddStatus.find(params[:id])

    respond_to do |format|
      if @add_status.update_attributes(params[:add_status])
        format.html { redirect_to @add_status, :notice => 'Add status was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @add_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /add_statuses/1
  # DELETE /add_statuses/1.json
  def destroy
    @add_status = AddStatus.find(params[:id])
    @add_status.destroy

    respond_to do |format|
      format.html { redirect_to add_statuses_url }
      format.json { head :ok }
    end
  end
end
