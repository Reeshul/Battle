feature "seeing hit points" do
  scenario "during gameplay" do
    sign_in_and_play
    expect(page).to have_content "Bill: 100 HP"
  end
end
