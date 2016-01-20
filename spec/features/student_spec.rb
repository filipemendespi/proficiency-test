require 'rails_helper'

feature "Register" do
  scenario "when sending valid information" do
    visit root_path
    click_link t("helpers.students.create")

    fill_in label("students.name"), with: "Filipe Mendes"
    fill_in label("students.register_number"), with: "0001"
    select('Matriculado', :from => label("students.status"))
    click_button submit("student.create")

    expect(current_path).to eql(root_path)
  end
end
