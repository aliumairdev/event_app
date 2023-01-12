require "rails_helper"

RSpec.describe Event, :type => :model do
  before(:each) do
    @event = create(:event)
  end

  describe "validations" do
    it "is valid with valid attributes" do
      expect(@event).to be_valid
    end
    
    it "is not valid with invalid attributes" do
      @event.title = nil
      expect(@event).to_not be_valid
      # expect(subject).to_not be_valid
    end

    it { is_expected.to validate_presence_of(:title) }

    it { is_expected.to validate_presence_of(:description) }
    
    it { is_expected.to validate_presence_of(:date) }
    
    it { is_expected.to validate_presence_of(:time) }
  end
end
