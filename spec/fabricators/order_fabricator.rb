Fabricator(:order) do
  sandwich { Faker::Lorem.sentence(1) }  
  user_id { Fabricate(:user).id } 
end