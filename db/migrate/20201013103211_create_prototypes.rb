class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string     :title,      null: false
      t.text       :catch_copy, null: false
      t.text       :consept,    null: false
      t.references :user,       null: false
      t.timestamps
    end
  end
end
