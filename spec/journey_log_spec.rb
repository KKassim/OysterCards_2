# frozen_string_literal: true

require 'journey_log'

describe JourneyLog do
    let(:exit_station) { double :station }
    let(:entry_station) { double :station }
    let(:incomplete_journey) { { entry_station: nil, exit_station: nil } }

  # it 'stores the journey' do
  #   subject.add_journey(entry_station, exit_station)
  #   expect(subject.journey_list).to include journey
  # end

  # describe ' #start' do
  #   it 'starts a journey' do
  #     expect(journey).to receive().with(entry_station: entry_station)
  #     subject.start(entry_station)
  #   end
  # end

  context "current_journey" do
    it "case. 1 journey is already complete... should create a new journey" do
      expect(subject.current_journey).to be_a_kind_of(Journey)

    end
    it "case 2. journey is not complete yet... just shows the current journey" do
      log = JourneyLog.new
      expect(subject.current_journey).to be_a_kind_of(Journey)
    end
  end 

end
