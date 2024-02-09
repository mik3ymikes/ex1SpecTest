require 'rails_helper'

RSpec.describe Article, type: :model do


  context "Validations tests" do
    it "is not valid without a title" do
      title=build(:article, title: nil)
    end
  end

end
