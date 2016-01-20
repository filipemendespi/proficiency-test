require 'rails_helper'

feature "Register" do
  scenario 'when sending valid information' do
    visit root_path
    click_link t("helpers.room.create")

    select('Filipe Mendes', :from => label("room.students"))
    select('Sistemas de Informação', :from => label("room.students"))
    click_buttom submit("room.create")

    expect(current_path).to eql(root_path)
  end
end
