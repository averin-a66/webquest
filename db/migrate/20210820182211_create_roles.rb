class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.references :webtest
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
