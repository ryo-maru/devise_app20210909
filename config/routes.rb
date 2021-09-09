Rails.application.routes.draw do
  resources :blogs
  root 'blogs#index'
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
