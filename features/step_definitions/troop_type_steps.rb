Given /^The following Troop Types exist:$/ do |table|
  table.hashes.each do |t|
    Factory(:troop_type, t)
  end
end
