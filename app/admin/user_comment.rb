ActiveAdmin.register UserComment do
	permit_params :user_id, :picture_id, :text, :score

	form do |f|
		f.inputs do
			f.input :user
			f.input :picture
			f.input :text
			f.input :dcore
		end
		f.actions
	end

	index do
		selectable_column
		id_column
		column :user
		column :picture
		column :text
		column :score
		actions
	end

	show do
		attributes_table do
			row :user
			row :picture
			row :text
			row :score
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
