class CreateTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :texts do |t|
      t.string          :title,             null: false
      t.text            :writing,           null: false
      t.timestamps
    end
  end
end
