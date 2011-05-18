class OptionsController < ApplicationController
  expose(:troop)
  expose(:option)

  def new
  end

  def create
    option.update_attribute(:troop_id, params[:troop_id])
    if option.save
      redirect_to root_path, :notice => "Successfully added '#{option.name}' option to '#{troop.name}'"
    else
      render 'new'
    end
  end

  def destroy
    if option.destroy
      redirect_to root_path, :notice => "Successfully deleted '#{option.name}' option from '#{troop.name}'"
    end
  end
end
