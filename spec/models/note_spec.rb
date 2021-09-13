require 'rails_helper'

RSpec.describe Note, type: :model do
  before :each do
    @note = Note.new(title: "BJJ Intermediate", date: "2021-09-01", instructor: "Nima", description: "Began with some specific from half guard, then Nima taught us a sweep he likes to use. You load up your partner on the knee shield before rolling over your shoulder and popping your legs through - partner should end up under my side control.", user_id: 1, tag_list: nil)
  end

  describe "#new" do
    it 'returns a new note object' do
      expect(@note).to be_an_instance_of Note
    end
  end

  describe 'validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:instructor) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end

end
