class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :content
      t.string :votes
      t.belongs_to :player, foreign_key: true
      t.belongs_to :round, foreign_key: true

      t.timestamps
    end
  end
end
