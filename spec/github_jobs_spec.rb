require 'spec_helper'

describe Github::Jobs do
  let(:positions) do
    VCR.use_cassette('positions') { Github::Jobs.positions }
  end

  let(:ruby_positions) do
    VCR.use_cassette('ruby_positions') { Github::Jobs.positions(search: 'ruby') }
  end

  describe '.positions' do
    describe 'recent' do
      subject { positions }

      its(:count) { should eq 50 }
      its(:first) { should be_kind_of Github::Job }
    end

    describe 'with search' do
      subject { ruby_positions }

      its(:count) { should eq 50 }
      its(:first) { should be_kind_of Github::Job }
      it('uses search options') { should_not eq positions }
    end
  end
end

describe Github::Job do
  let(:job) { Github::Job.new(id: 3, title: 'Ruby Developer', location: 'London') }

  subject { job }

  its(:id)       { should eq 3 }
  its(:title)    { should eq 'Ruby Developer' }
  its(:location) { should eq 'London' }

  describe '.==' do
    it 'id same' do
      same_job = Github::Job.new(id: 3)
      expect(same_job).to eq job
    end

    it 'id different' do
      different_job = Github::Job.new(id: 6)
      expect(different_job).not_to eq job
    end
  end
end
