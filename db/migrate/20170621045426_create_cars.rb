class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
    	t.string :owner
    	t.string :email
    	t.string :town
    	t.string :brand
    	t.string :model
    	t.integer :year
    	t.integer :mileage
      	t.date :available_on
      	t.date :available_until
      	t.integer :rent
      	t.string :description


      t.timestamps
    end
  end
end
