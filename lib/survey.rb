class Survey < ActiveRecord::Base
  has_many(:questions)
  before_save(:upcase)

private

  def upcase
    self.title = title.upcase
  end
end
