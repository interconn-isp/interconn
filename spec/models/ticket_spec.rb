RSpec.describe Ticket do
  subject { build_stubbed(:ticket) }

  it 'is valid' do
    expect(subject).to be_valid
  end

  %w(full_name email subject body).each do |attribute|
    it "validates the presence of #{attribute}" do
      expect(subject).to validate_presence_of(attribute)
    end
  end

  it 'validates email is a valid email address' do
    expect(build_stubbed(:ticket, email: 'foo')).not_to be_valid
  end

  it 'validates phone_number is a valid phone number' do
    expect(build_stubbed(:ticket, phone_number: '3')).not_to be_valid
  end

  it 'validates body is at least 30 characters' do
    expect(subject).to validate_length_of(:body).is_at_least(30)
  end
end
