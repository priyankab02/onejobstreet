class AddAdditionalYearandMonthForUserExp < ActiveRecord::Migration
  def change
  	add_column :users, :total_experience_years, :integer
    add_column :users, :total_experience_months, :integer
  end
end
