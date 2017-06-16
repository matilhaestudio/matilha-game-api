class CreateGameEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :game_events do |t|
      t.text :event, null: false
      t.string :option_1_message, null: false
      t.text :option_1_fn_body
      t.string :option_1_fn_return_message, null: false
      t.boolean :option_1_fn_end, null: false, default: false
      t.string :option_2_message
      t.text :option_2_fn_body, null: false
      t.string :option_2_fn_return_message, null: false
      t.boolean :option_2_fn_end, null: false, default: false

      t.timestamps
    end
  end
end
