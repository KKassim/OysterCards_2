# frozen_string_literal: true

require 'journey'
require 'oyster_card'

describe Journey do
  # let(:journey) { { entry_station: entry_station, exit_station: exit_station } }

  let(:exit_station) { double :station }
  let(:entry_station) { double :station }

  subject { Journey.new(entry_station) }

  it 'knows if a journey is not complete' do
    expect(subject).not_to be_complete
  end

  it 'has a penalty fare by default' do
    expect(subject.fare).to eq Journey::PENALTY_FARE
  end

  it 'returns itself when exiting a journey' do
    expect(subject.finish(exit_station)).to eq(subject)
  end

  context 'given an entry station' do
    subject { described_class.new(entry_station) }

    it 'has an entry station' do
      expect(subject.entry_station).to eq entry_station
    end

    it 'returns a penalty fare if no exit station given' do
      expect(subject.fare).to eq Journey::PENALTY_FARE
    end
  end

  context 'given an exit station' do
    let(:exit_station) { 'exit_station' }

    before do
      subject.finish(exit_station)
    end

    it 'calculates a fare' do
      expect(subject.fare).to eq 1
    end

    it 'knows if a journey is complete' do
      expect(subject).to be_complete
    end
  end
end
