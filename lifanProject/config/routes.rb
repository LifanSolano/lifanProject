Rails.application.routes.draw do

    get 'home/index'

    post 'home/create'

    get 'home/update'

    get 'home/delete'
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
