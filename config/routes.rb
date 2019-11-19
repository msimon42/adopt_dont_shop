Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#startpage'
  get '/shelters', to: 'shelters#shelters'
  get '/shelters/:id', to: 'shelters#show'
end
