class UpdateBooks < ActiveRecord::Migration[7.0]
  def change

    execute <<-SQL
      ALTER TABLE books
        ADD COLUMN name VARCHAR(255)
    SQL

  end
end
