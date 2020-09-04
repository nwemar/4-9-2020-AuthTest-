class CreateCustomerhomes < ActiveRecord::Migration[6.0]
  def change
    create_table :customerhomes do |t|

      t.timestamps
    end
  end
end
