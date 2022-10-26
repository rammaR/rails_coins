class CreateCookies < ActiveRecord::Migration[7.0]
  def change
    create_table :cookies do |t|

      t.timestamps
    end
  end
end
