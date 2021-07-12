class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
      t.boolean :option, default: false

      t.timestamps
    end
  end
end
