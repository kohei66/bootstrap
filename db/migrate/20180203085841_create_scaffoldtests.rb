class CreateScaffoldtests < ActiveRecord::Migration[5.1]
  def change
    create_table :scaffoldtests do |t|
      t.text :content

      t.timestamps
    end
  end
end
