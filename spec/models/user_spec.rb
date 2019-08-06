require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'user params validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:password_confirmation) }
    it { should validate_presence_of(:gender) }
    it { should validate_presence_of(:phone) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
  end

end
