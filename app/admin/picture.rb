ActiveAdmin.register Picture do
	permit_params :user_id, :title, :image

	form do |f|
		f.inputs do
			f.input :user
			f.input :title
			f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
		end
		f.actions
	end

	index do
		selectable_column
		id_column
		column :image do |picture|
			image_tag picture.image.url(:thumb)
		end
		column :title
		column :user
		actions
	end

	show do
		attributes_table do
			row :image do |picture|
		 		image_tag picture.image.url(:medium)
			end
			row :title
			row :user
		end
		active_admin_comments
	end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
