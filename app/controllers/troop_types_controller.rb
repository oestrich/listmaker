class TroopTypesController < ApplicationController
  expose(:troop_types) { TroopType.all }
  expose(:troop_type)

  # GET /troop_types
  # GET /troop_types.xml
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => troop_types }
    end
  end

  # GET /troop_types/1
  # GET /troop_types/1.xml
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => troop_type }
    end
  end

  # GET /troop_types/new
  # GET /troop_types/new.xml
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => troop_type }
    end
  end

  # GET /troop_types/1/edit
  def edit
  end

  # POST /troop_types
  # POST /troop_types.xml
  def create
    respond_to do |format|
      if troop_type.save
        format.html { redirect_to(troop_types_path, :notice => "Successfully added '#{troop_type.name}' troop type") }
        format.xml  { render :xml => troop_type, :status => :created, :location => troop_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => troop_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /troop_types/1
  # PUT /troop_types/1.xml
  def update
    respond_to do |format|
      if troop_type.update_attributes(params[:troop_type])
        format.html { redirect_to(troop_type, :notice => 'Troop type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => troop_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /troop_types/1
  # DELETE /troop_types/1.xml
  def destroy
    troop_type.destroy

    respond_to do |format|
      format.html { redirect_to(troop_types_url) }
      format.xml  { head :ok }
    end
  end
end
