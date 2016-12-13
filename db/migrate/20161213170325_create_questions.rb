class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table(:questions) do |t|
      t.column(:survey_id, :integer)
      t.column(:description, :string)

      t.timestamps()
    end
  end
end
