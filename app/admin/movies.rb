ActiveAdmin.register Movie do
  permit_params :genre, :title, :url

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :genre, :title, :url
  #
  # or
  #
  # permit_params do
  #   permitted = [:genre, :title, :url]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
