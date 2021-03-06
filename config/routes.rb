Rails.application.routes.draw do
  root to: "idea#resume_box"

  resources :idea, only: [:edit, :update]

  namespace :api do
    namespace :v1 do
      resources :idea
    end
  end
  
  mount MagicLamp::Genie, at: "/magic_lamp/" if defined?(MagicLamp)
end
