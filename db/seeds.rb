# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Factory(:troop_type, :name => "Lord", :percentage => 25)
Factory(:troop_type, :name => "Hero", :percentage => 25)
Factory(:troop_type, :name => "Core", :percentage => 50)
Factory(:troop_type, :name => "Special", :percentage => 75)
Factory(:troop_type, :name => "Rare", :percentage => 25)
