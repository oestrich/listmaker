Factory.define :troop_type do |f|
  f.sequence(:name) { |n| "Type #{n}" }
  f.percentage 25
end
