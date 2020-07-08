Rails.application.routes.draw do
  resources :portfolios

  get 'about-me' => 'pages#about'
  get 'contact', to:'pages#contact'
  resources :blogs

  root to: 'pages#home'
end
