Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static#show", page: "about"
  get "/:page" => "static#show"
end
