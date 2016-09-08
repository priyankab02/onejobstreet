class AddEligibilityToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :eligibility_for_uk, :string
  end
end
