class OptionsController < ApplicationController
  expose(:troop)
  expose(:option)

  def new
    render "new", :layout => false
  end

  def create
    option.update_attribute(:troop_id, params[:troop_id])
    if option.save
      redirect_to root_path, :notice => "Successfully added '#{option.name}' option to '#{troop.name}'"
    else
      render 'new'
    end
  end

  def edit
    render "edit", :layout => false
  end

  def update
    if option.save
      redirect_to root_path, :notice => "Successfully updated '#{option.name}' option for '#{troop.name}'"
    else
      render edit
    end
  end

  def destroy
    if option.destroy
      redirect_to root_path, :notice => "Successfully deleted '#{option.name}' option from '#{troop.name}'"
    end
  end
end
