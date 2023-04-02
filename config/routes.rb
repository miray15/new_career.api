Rails.application.routes.draw do
  
get "/codes" => "codes#index"

post "/codes" => "codes#create"

end
