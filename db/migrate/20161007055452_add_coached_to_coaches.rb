class AddCoachedToCoaches < ActiveRecord::Migration[5.0]
  def change
    add_column :coaches, :coach_april_13_pivotal, :boolean
    add_column :coaches, :coach_march_14_invpasadena, :boolean
    add_column :coaches, :coach_april_15_pivotal, :boolean
    add_column :coaches, :coach_august_15_spokeo, :boolean
    add_column :coaches, :coach_march_16_zest, :boolean
    add_column :coaches, :work_at_sponsoring_company, :boolean
  end
end
