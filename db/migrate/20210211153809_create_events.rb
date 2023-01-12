class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.datetime :time
      t.boolean :notify

      t.timestamps
    end
  end
end
