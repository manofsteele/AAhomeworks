require 'rails_helper'

describe User do
  subject(:user) do
    FactoryBot.build(:user,
      email: "jonathan@fakesite.com",
      password: "good_password")
  end

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:email).is_at_least(6) }


  describe "#is_password?" do
  end

  describe "#reset_session_token!" do

  end

  describe "::find_by_credentials" do

  end
end
