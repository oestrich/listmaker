Factory.define :troop_type do |f|
  f.sequence(:name) { |n| "Type #{n}" }
  f.percentage 25
end

Factory.define :troop do |f|
  f.sequence(:name) { |n| "Troop #{n}" }
  f.base_points 50
  f.point_type_id 0
end
