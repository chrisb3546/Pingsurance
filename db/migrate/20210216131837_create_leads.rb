class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.text :first_name
      t.text :last_name
      t.text :phone_number
      t.text :note

      t.timestamps
    end
  end
end
