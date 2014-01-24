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



   # it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
   #   get guestbooks_index_path
   #   response.status.should be(200)
    end
  end

