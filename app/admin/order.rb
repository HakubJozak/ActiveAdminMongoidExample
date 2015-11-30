ActiveAdmin.register Order do
  permit_params :number, :user_id

  index do
    selectable_column
    id_column
    column :number
    column :email
    column :paid_at
    actions
  end

  filter :email
  filter :number

  form do |f|
    f.inputs "Order Details" do
      f.input :email
      f.input :order
    end
    f.actions
  end

end
