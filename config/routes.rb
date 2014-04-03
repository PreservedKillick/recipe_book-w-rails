Recipes::Application.routes.draw do
  ##recipes routes

  match('recipes', {:via => :get, :to => 'recipes#index'})
  match('recipes/new', {:via => :get, :to => 'recipes#new'})
  match('recipes', {:via => :post, :to => 'recipes#create'})
  match('recipes/:id', {:via => :get, :to => 'recipes#show'})
  match('recipes/:id/edit', {:via => :get, :to => 'recipes#edit'})
  match('recipes/:id', {:via => [:patch, :put], :to => 'recipes#update'})
  match('/', {:via => :get, :to => 'tags#index'})
  match('recipes/:id', {:via => :delete, :to => 'recipes#destroy'})

  ##tags routes

  match('tags', {:via => :get, :to => 'tags#index'})
  match('tags/new', {:via => :get, :to => 'tags#new'})
  match('tags', {:via => :post, :to => 'tags#create'})
  match('tags/:id', {:via => :get, :to => 'tags#show'})
  match('tags/:id/edit', {:via => :get, :to => 'tags#edit'})
  match('tags/:id', {:via => [:patch, :put], :to => 'tags#update'})
  match('/', {:via => :get, :to => 'tags#index'})
  match('tags/:id', {:via => :delete, :to => 'tags#destroy'})

  ##recipes_tags routes
  match('recipes_tags', {:via => :get, :to => 'recipes_tags#index'})
  match('recipes_tags/:tag_id/new', {:via => :get, :to => 'recipes_tags#new'})
  match('recipes_tags', {:via => :post, :to=> 'recipes_tags#create'})
end

