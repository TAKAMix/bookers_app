Rails.application.routes.draw do
  get 'books/new'
  get '/' => 'homes#top'
  get 'books' => 'books#show'
  get 'books' => 'books#edit'
  get 'books' => 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
