ActiveAdmin.register Product do
  permit_params :name, :price, :description, :category_id, :size

  index do
    selectable_column
    id_column
    column :name
    column :price
    column :category
    column :created_at
    actions
  end

  filter :name
  filter :price
  filter :category
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :price
      f.input :description
      f.input :category
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :price
      row :description
      row :category
      row :created_at
      row :updated_at
    end
  end
end
