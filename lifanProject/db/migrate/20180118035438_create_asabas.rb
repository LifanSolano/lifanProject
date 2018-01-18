class CreateAsabas < ActiveRecord::Migration[5.1]
  def change
    create_table :asabas do |t|
      t.string :name
      t.string :string
      t.string :age
      t.string :integer
      t.string :login
      t.string :string
      t.string :password
      t.string :string
      t.string :concertProgram
      t.string :text
      t.string :partyTypeID
      t.string :integer
      t.string :cityID
      t.string :integer
      t.string :countryID
      t.string :integer
      t.string :price
      t.string :integer
      t.string :rating
      t.string :float

      t.timestamps
    end
  end
end
