Rails::Application.routes.draw do
  match 'wymiframe/:id', :to => 'refinery/fast#wymiframe'

  scope(:path => 'refinery', :name_prefix => 'admin', :module => 'admin') do
    resources :refinery_core
  end

  match '/refinery/flash',                 :to => 'admin/refinery_core#render_flash_messages'
  match '/refinery/update_menu_positions', :to => 'admin/refinery_core#update_plugin_positions'
end