class HomeController < ApplicationController
  expose(:troop_types) { TroopType.all }

  def index
  end
end
