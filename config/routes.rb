Rails.application.routes.draw do
  resources :students, only: [:index, :show, :update]

  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end
