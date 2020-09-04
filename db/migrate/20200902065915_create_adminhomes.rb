class CreateAdminhomes < ActiveRecord::Migration[6.0]
  def change
    create_table :adminhomes do |t|

      t.timestamps
    end
  end
end
