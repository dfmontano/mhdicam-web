Rails.application.routes.draw do
  resources :gastos_balanceados
  resources :vitaminas
  resources :desinfectantes
  resources :bacteria
  resources :fertilizantes
  resources :periodos
  resources :corridas
  resources :piscinas
  resources :balanceados
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
