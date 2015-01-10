require 'secret_agent_noun'

describe SecretAgentNoun do
  subject { described_class }

  describe '.agent_noun' do
    let(:result) { subject.agent_noun(input) }

    context 'with a lowercase string' do
      let(:input) { 'build' }
      it { expect(result).to eq('builder') }
    end

    context 'with a mixed case string' do
      let(:input) { 'CiVilIze' }
      it { expect(result).to eq('civilizer') }
    end

    context 'with a symbol' do
      let(:input) { :massage }
      it { expect(result).to eq('masseuse') }
    end
  end

  describe '.verb' do
    let(:result) { subject.verb(input) }

    context 'with a lowercase string' do
      let(:input) { 'caller' }
      it { expect(result).to eq('call') }
    end

    context 'with a mixed case string' do
      let(:input) { 'CreAtOr' }
      it { expect(result).to eq('create') }
    end

    context 'with a symbol' do
      let(:input) { :organizer }
      it { expect(result).to eq('organize') }
    end
  end
end
