require 'rails_helper'

RSpec.describe "exercises/edit", type: :view do
  before(:each) do
    @exercise = assign(:exercise, Exercise.create!(
      :name => "MyString",
      :user => nil
    ))
  end

  it "renders the edit exercise form" do
    render

    assert_select "form[action=?][method=?]", exercise_path(@exercise), "post" do

      assert_select "input[name=?]", "exercise[name]"

      assert_select "input[name=?]", "exercise[user_id]"
    end
  end
end
