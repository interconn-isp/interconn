RSpec.feature 'The pricing pages' do
  scenario 'Visiting the WADSL page' do
    visit root_path
    click_link 'Piani'

    expect(page).to have_content '7 Mega Privati'
  end

  scenario 'Visiting the WHDSL page' do
    visit root_path
    click_link 'Piani'
    click_link 'WHDSL'

    expect(page).to have_content '2 Mega / 1 Mega'
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
