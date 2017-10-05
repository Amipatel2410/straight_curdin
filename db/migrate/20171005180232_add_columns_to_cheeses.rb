class AddColumnsToCheeses < ActiveRecord::Migration[5.1]
  def change
    add_column :cheeses, :stank_level, :integer
  end
end
