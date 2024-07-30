ActiveAdmin.register Size do
  permit_params :size

  index do
    selectable_column
    id_column
    column :size
    actions
  end

  form do |f|
    f.inputs 'Size Details' do
      f.input :size
    end
    f.actions
  end
end
