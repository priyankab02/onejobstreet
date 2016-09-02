class AddColToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :city, :string
    add_column :users, :current_location, :string
    add_column :users, :phone, :string
    add_column :users, :highest_education, :string
    add_column :users, :current_job_title, :string
    add_column :users, :employee_type, :string
    add_column :users, :total_experience_years, :integer
    add_column :users, :total_experience_months, :integer
    add_column :users, :desired_job_title, :string
    add_column :users, :job_type, :string
    add_column :users, :current_salary, :integer
    add_column :users, :wiling_to_travel, :boolean
    # add_column :users, :work_in_uk, #not sure for string or boolean
    add_column :users, :terms_and_conditions, :boolean
  end
end
