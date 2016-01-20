Rails.application.routes.draw do
  root to: "students#index"

  get 'cadastrar/aluno', to: 'students#new', as: "students"
  post 'cadastrar/aluno', to: 'students#create'

  get 'cadastrar/curso', to: 'courses#new', as: "courses"
  post 'cadastrar/curso', to: 'courses#create'

  get 'matricular', to: 'rooms#new', as: 'rooms'
  post 'matricular', to: 'rooms#create'
end
