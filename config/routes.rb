#Šeit tiek veidots ceļs, kas atļauj pāriet uz lapu lapā.
Rails.application.routes.draw do
  resources :darbiniekis
  #get 'home/index'
  get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
