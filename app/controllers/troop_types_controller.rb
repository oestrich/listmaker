class TroopTypesController < ApplicationController
  expose(:troop_types) { TroopType.all }
  expose(:troop_type)

  def index
    render :json => troop_types.to_json(:include => { :troops => {}} )
  end

  def new
    render 'new', :layout => false
  end

  def edit
    render "edit", :layout => false
  end

  def create
    if troop_type.save
      redirect_to(root_path, :notice => "Successfully added '#{troop_type.name}' troop type")
    else
      render :action => "new"
    end
  end

  def update
    if troop_type.update_attributes(params[:troop_type])
      redirect_to(root_path, :notice => 'Troop type was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    troop_type.destroy

    redirect_to(root_path, :notice => "Successfully deleted '#{troop_type.name}' troop type")
  end

  def update_positions
    params[:troop_type][:positions].each do |position_update|
      troop_type = TroopType.find(position_update[:id])
      troop_type.update_attribute(:position, position_update[:position])
    end

    head :no_content
  end
end
