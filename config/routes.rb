Rails.application.routes.draw do
  devise_for :users
  root "pages#home"

  # Routes pour la navbar
  get "/services", to: "pages#services", as: "services"
  get "/blog", to: "pages#blog", as: "blog"
  get "/contact", to: "pages#contact", as: "contact"
end