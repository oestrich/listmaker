class TroopsController < ApplicationController
  expose(:troop)
  expose(:troop_types) { TroopType.all }

  def new

  end

  def create
    if troop.save
      redirect_to root_path, :notice => "Successfully added '#{troop.name}'"
    end
  end

  def edit

  end

  def update
    if troop.save
      redirect_to root_path, :notice => "Successfully updated '#{troop.name}'"
    end
  end
end
