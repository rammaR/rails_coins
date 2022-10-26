class CreateCoins < ActiveRecord::Migration[7.0]
  def change
    
    create_table :coins do |t|
      t.string :name
      t.string :acronym
      t.string :url_image

      t.timestamps
    end
  end
end
