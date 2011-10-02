class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :studies
      t.integer :year_of_studies
      t.text :comments

      t.timestamps
    end
  end
end
