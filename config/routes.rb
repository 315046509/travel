Travel::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root :to => "main#index"
  match '/login' => 'main#login', :via => :get
  match '/logout' => 'main#logout', :via => :get
  match '/signup' => 'main#signup', :via => :get
  resources :main do
    collection do
      post 'user_create'
      post 'login_check'
      get 'check_login'
    end
  end
  resources :destination_one do
    member do
      delete 'tejia_show'
    end
  end
  resources :destination_two
  resources :destination_three
  resources :destination_four
  resources :destination_five
  resources :destination_six
  resources :destination_seven
  resources :destination_eight
  # admin
  namespace :admin do
    match '' => 'accounts#index', :via => :get
    match '/login' => 'main#login', :via => :get
    match '/logout' => 'main#logout', :via => :get
    resources :main do
      collection do
        post 'check_login'
      end
    end

    # 会员管理
    resources :accounts do
      collection do
        post 'update_multiple'
      end
    end

    # 最新公告
    resources :announcements

    # 导航栏一
    resources :one_cities do
      # 出境
      resources :exithots
      # 国内
      resources :domestics
      # 海外经典板块
      resources :jingdians
    end

    # 导航栏二
    resources :citys do
      # 特价
      resources :tejia
      # 攻略
      resources :raiders
      # 推荐
      resources :recommends
      # 跟团
      resources :gentuans
      # 跟团
      resources :freelines
    end

    # 导航栏三
    resources :three_cities do
      # 特价
      resources :three_tejia
      # 攻略
      resources :three_raiders
      # 推荐
      resources :three_recommends
      # 跟团
      resources :three_gentuans
      # 跟团
      resources :three_freelines
    end
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
