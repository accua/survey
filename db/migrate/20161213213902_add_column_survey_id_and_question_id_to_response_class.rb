class AddColumnSurveyIdAndQuestionIdToResponseClass < ActiveRecord::Migration[5.0]
  def change
    add_column(:response, :survey_id, :integer)
    add_column(:response, :question_id, :integer)
  end
end
