Rails.application.routes.draw do


  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphql", graphql_path: "queries"
  end

  root to: redirect("/graphql")

  resources :queries
  
end
