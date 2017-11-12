Rails.application.routes.draw do
  get '/', to: "pages#home"

  get 'about', to: "pages#about"

  get 'contact', to: "pages#contact", as: :feedback

  get 'shops', to: "shops#index"

  post 'shops' , to: "shops#create"

  root "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
