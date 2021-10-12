Rails.application.routes.draw do
  root "articles#index"

  # maps all conventional routes for articles
  # also set up helper methods
  # article_path method will return /articles/#{article.id}
  # run bin/rails routes to see a list of mappings
  resources :articles do
    resources :comments #creates comments as a nested resource within articles
  end
end

  # get "/articles", to: "articles#index" #route GET /articles to index action of the article controller
  # get "/articles/:id", to: "articles#show" #GET http://localhost:3000/articles/1 1 will be preceived as id
