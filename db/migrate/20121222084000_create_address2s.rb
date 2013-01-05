class CreateAddress2s < ActiveRecord::Migration
  def change
    create_table :address2s do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
