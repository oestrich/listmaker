Given /^the following Troop Types exist:$/ do |table|
  table.hashes.each do |t|
    Factory(:troop_type, t)
  end
end

Given /^the following Troops exist:$/ do |table|
  table.hashes.each do |t|
    Factory(:troop, t.merge(:base_points => t[:base_points].to_i, :troop_type => TroopType.find_by_name(t[:troop_type])))
  end
end

Given /^The following Options exist:$/ do |table|
  table.hashes.each do |t|
    troop = Troop.find_by_name(t["troop_name"])
    t.delete("troop_name")
    Factory(:option, t.merge({ :troop_id => troop.id }))
  end
end

Then /^"([^"]*)" should have "([^"]*)" options$/ do |troop, count|
  troop = Troop.find_by_name(troop)
  troop.options.count.should == count.to_i
end

Then /^there should be no troops with troop type "([^"]*)"$/ do |troop_type_name|
  Troop.all.each do |troop|
    troop.troop_type.name.should_not == troop_type_name
  end
end

