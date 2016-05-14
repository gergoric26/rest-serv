class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :email
      t.string :p_number
      t.string :position
      t.text :cover
      
      t.text :reference

      t.timestamps null: false
    end
  end
end
