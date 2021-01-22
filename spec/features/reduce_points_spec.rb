feature "reduce player 2 HP" do
  scenario "by 10 points" do
    sign_in_and_play
    click_on "Attack"
    expect(page).to have_content "90 HP"
  end
end 
