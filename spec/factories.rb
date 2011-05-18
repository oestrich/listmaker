Factory.define :troop_type do |f|
  f.sequence(:name) { |n| "Type #{n}" }
  f.min_percentage 0
  f.max_percentage 25
end

Factory.define :troop do |f|
  f.sequence(:name) { |n| "Troop #{n}" }
  f.base_points 50
  f.point_type_id 0
  f.count 1
  f.association :troop_type, :factory => :troop_type
end

Factory.define :option do |f|
  f.sequence(:name) { |n| "Option #{n}" }
  f.points 15
  f.type_id 0
  f.association :troop, :factory => :troop
end
