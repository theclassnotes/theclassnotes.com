TheclassnotesCom::Application.routes.draw do
  devise_for :users

  resources :updates


  root :to => 'updates#index'
end
