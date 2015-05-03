ActiveAdmin.register Page do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :content
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
form :html => { :enctype => "multipart/form-data" } do |f|
  f.inputs "Pages", :multipart => true do
  	f.input :number
    f.input :title
    f.input :content, :as => :ckeditor
    # f.input :picture, :required => false, :as => :file
  end
  f.actions 
end

end
