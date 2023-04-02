Rails.application.routes.draw do
  
get "/codes" => "codes#index"

post "/codes" => "codes#create"

get "/codes/:id" => "codes#show"

patch "/codes/:id:" => "codes#update"

end


