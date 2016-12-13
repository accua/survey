class AddQuestionIdColumnToResponse < ActiveRecord::Migration[5.0]
  def change
    add_column(:responses, :question_id, :integer)
  end
end
