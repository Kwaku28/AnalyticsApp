class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :search_query
      t.references :user, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
