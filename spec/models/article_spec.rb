require 'rails_helper'

RSpec.describe Article, type: :model do
  context "Validations tests" do
    it "is not valid without a title" do
      article = build(:article, title: nil)
      expect(article).not_to be_valid
    end
  end

  it "is not valid without content" do
    article = build(:article, content: nil)
    expect(article).not_to be_valid

  end 


  it "is not valid without unless title is 5 char min" do
    article=Article.create(title:"ddds", content: "helloooooo" *10)
    expect(article).not_to be_valid

  end 


  it "is not valid without unless content is 50 char min" do
    article=Article.create(title:"dddsFSD", content: "helloooooo")
    expect(article).not_to be_valid

  end 


  it "it is valid with vaild params" do
    article=Article.create(title:"dddsFSD", content: "helloooooo" *10)
    expect(article).to be_valid

  end 
end
