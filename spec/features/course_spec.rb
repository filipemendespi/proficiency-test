require 'spec_rails'

feature "Register" do
  scenario 'when sending valid information' do
    visit root_path
    click_link t("form.helpers.course.create")

    fill_in label("coruse.name"), with: "Sistemas de Informação"
    fill_in label("coruse.description"), with: "Curso muito bom"
    select('Ativo', :from => label("course.status"))
    click_button submit("course.create")

    expect(current_path).to eql(root_path)
  end
end
