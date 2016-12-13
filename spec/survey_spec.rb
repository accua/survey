require('spec_helper')

describe Survey do
  it "converts the name to uppercase" do
    survey = Survey.create({title: "top food carts!"})
    expect(survey.title).to eq "TOP FOOD CARTS!"
  end
end
