class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :subcategory
      t.string :address
      t.date :date_from
      t.date :date_to
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
