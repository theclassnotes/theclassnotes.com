TheclassnotesCom::Application.routes.draw do
  resources :updates


  root :to => 'updates#index'
end
