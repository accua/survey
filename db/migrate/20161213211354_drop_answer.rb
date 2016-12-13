class DropAnswer < ActiveRecord::Migration[5.0]
  def change
    create_table(:response) do |r|
      r.string :answer
      r.timestamps
    end
    remove_column(:questions, :answer, :string)
  end
end
