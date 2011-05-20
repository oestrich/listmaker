class TroopTypesController < ApplicationController
  expose(:troop_types) { TroopType.all }
  expose(:troop_type)

  def index
    render :json => troop_types
  end

  def new
  end

  def edit
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
    params[:position].each do |troop_type_position|
      troop_type = TroopType.find(troop_type_position[0])
      troop_type.update_attribute(:position, troop_type_position[1])
    end

    render :text => "Success"
  end
end
