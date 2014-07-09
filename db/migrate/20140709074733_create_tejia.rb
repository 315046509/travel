class CreateTejia < ActiveRecord::Migration
  def change
    create_table :tejia do |t|
      t.string :title
      t.text :description
      t.attachment :avatar

      t.timestamps
    end
  end
end
