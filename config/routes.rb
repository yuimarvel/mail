Rails.application.routes.draw do
  Rails.application.routes.draw do
    root "emails#index"
    resources :emails
    get "/all_emails", to: "emails#all", :as => :all_emails
  end
end
