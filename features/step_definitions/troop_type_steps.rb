Given /^The following Troop Types exist:$/ do |table|
  table.hashes.each do |t|
    Factory(:troop_type, t)
  end
end

Given /^the following Troops exist:$/ do |table|
  table.hashes.each do |t|
    Factory(:troop, t.merge(:base_points => t[:base_points].to_i, :troop_type => TroopType.find_by_name(t[:troop_type])))
  end
end

