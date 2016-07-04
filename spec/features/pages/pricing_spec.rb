# frozen_string_literal: true
RSpec.feature 'The pricing pages' do
  scenario 'Visiting the WADSL page', js: true do
    visit root_path
    click_link 'Piani'

    expect(page).to have_content '8 Mega Privati'
    expect(page).not_to have_content '7 Mega Business'

    find('.switch-control').click
    expect(page).not_to have_content '8 Mega Privati'
    expect(page).to have_content '7 Mega Business'
  end

  scenario 'Visiting the ADSL page' do
    visit root_path
    click_link 'Piani'
    click_link 'ADSL'

    expect(page).to have_content '7 Mega No Telecom'
  end

  scenario 'Visiting the Fiber page' do
    visit root_path
    click_link 'Piani'
    click_link 'Fibra'

    expect(page).to have_content 'Fibra 30 Mega'
  end

  scenario 'Visiting the VoIP page' do
    visit root_path
    click_link 'Piani'
    click_link 'VoIP'

    expect(page).to have_content 'InterConn VoIP'
  end
end
