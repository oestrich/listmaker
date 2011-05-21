class TroopsController < ApplicationController
  expose(:troop)
  expose(:troop_types) { TroopType.all }

  def new
    render "new", :layout => false
  end

  def create
    if troop.save
      redirect_to root_path, :notice => "Successfully added '#{troop.name}'"
    end
  end

  def edit
    render "edit", :layout => false
  end

  def update
    if troop.save
      redirect_to root_path, :notice => "Successfully updated '#{troop.name}'"
    else
      render 'edit'
    end
  end

  def destroy
    if troop.destroy
      redirect_to root_path, :notice => "Successfully deleted '#{troop.name}'"
    end
  end

  def toggle
    troop.toggle_visibility

    head :status => 204
  end
end
