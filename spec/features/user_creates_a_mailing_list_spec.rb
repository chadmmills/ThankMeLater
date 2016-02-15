require 'rails_helper'

feature "A user with contacts" do
  scenario "can create a mailing list" do
    contact = create :contact

    visit new_mailing_list_path
    fill_in "Name of Mailing List", with: "New Baby"
    check contact.name
  end
end
