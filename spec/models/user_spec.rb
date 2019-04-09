require 'rails_helper'

RSpec.describe User, type: :model do
  
  subject { described_class.new(
    first_name: "Cristian",
    last_name: "Granda",
    username: "cristianbgp",
    email: "cristian.granda.pastor@gmail.com",
    email_confirmation: "cristian.granda.pastor@gmail.com",
    password: "12345678",
    password_confirmation: "12345678",
    password_hint: "1234"
  ) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a username" do
    subject.username = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end
end
