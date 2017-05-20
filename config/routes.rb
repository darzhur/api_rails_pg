Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: 'api' do
    namespace :v1 do
      # определяем REST запросы
      resources :jobs
      resources :companies do
        match 'mark_deleted', to: '/v1/companies/mark_deleted', via:'post'
        resources :jobs
      end
    end
  end
end
