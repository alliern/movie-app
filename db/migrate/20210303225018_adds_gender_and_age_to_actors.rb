class AddsGenderAndAgeToActors < ActiveRecord::Migration[6.1]
  def change
    adds_column :actors, :gender, :string
    adds_column :actors, :age, :integer
  end
end
