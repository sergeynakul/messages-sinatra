class CreateMessages < ActiveRecord::Migration[5.2]
  def change
  	create_table :messages do |t|
      t.text :body
      t.boolean :destruction
      t.boolean :visited, default: false

      t.timestamps
    end
  end
end
