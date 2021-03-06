class CreateUserContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_contacts do |t|
      t.string :contact
      t.references :user, index: true
      t.boolean :status, default: true
      t.timestamps
    end
  end
end