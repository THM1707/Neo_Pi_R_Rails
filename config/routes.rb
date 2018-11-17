Rails.application.routes.draw do
  get 'advices/all'
  get 'results/all'
  get 'quizzes/all'
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  post 'points', to: 'points#create'
  get 'point', to: 'points#last_point'
end
