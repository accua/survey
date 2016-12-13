class DropAnswerColumnAddResponseTable < ActiveRecord::Migration[5.0]
  def change
    create_table(:responses) do |r|
      r.string :answer
      r.timestamps
    end
  end
end
