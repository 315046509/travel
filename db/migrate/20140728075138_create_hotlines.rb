class CreateHotlines < ActiveRecord::Migration
  def change
    create_table :hotlines do |t|
      t.string :title
      t.integer :price
      t.attachment :avatar
      t.text :description
      t.text :xingcheng
      t.text :feiyongshuoming
      t.text :wenxintishi
      t.text :yudingtishi


      t.timestamps
    end
  end
end
