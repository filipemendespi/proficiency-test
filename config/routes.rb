Rails.application.routes.draw do
  root to: "students#index"

  get 'cadastrar/aluno', to: 'students#new', as: "students"
  post 'cadastrar/aluno', to: 'students#create'
end
