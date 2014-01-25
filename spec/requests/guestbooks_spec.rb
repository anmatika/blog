require 'spec_helper'

describe "Guestbooks" do
  describe "GET /guestbooks" do
    it "create guestbook message" do
      #/guestbooks
      visit guestbooks_path
      page.should have_content 'Vieraskirja'
      click_link "Kirjoita vieraskirjaan"

      #/guestbooks/new
      current_path.should == new_guestbook_path
      fill_in 'Message', with: 'Test'
      fill_in 'Name', with: 'rspec'
      click_button 'Luo Guestbook'
      id = Guestbook.last.id

      #/guestbooks/id
      current_path.should == guestbook_path(id)
    end
  end

  describe "autentication" do
    it "sign up" do

      visit root_path
      click_link "Sign up"
      current_path.should == sign_up_path
      fill_in 'Email', with: 'i@i312312.com'
      fill_in 'Password', with: '123'
      click_button 'createUser'
      #current_path.should == user_path(User.last.id)

    end
  end

end

