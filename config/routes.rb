Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :calendar, path: '' do
    resources :events, only: [:index, :show]
  end

  resources :calendar do
    collection do
      get 'archive/:year(/:month)' => 'events#archive', as: 'archive'
      get 'category/:id' => 'event_categories#show', as: 'category'
    end
  end

  # Admin routes
  namespace :calendar, path: '' do
    namespace :admin, path: 'refinery' do
      resources :events, except: :show
      resources :event_categories, except: :show
    end
  end

end
