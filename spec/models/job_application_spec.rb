# frozen_string_literal: true

require 'rails_helper'

RSpec.describe JobApplication, type: :model do
  describe 'associations' do
    it { should belong_to(:job_posting).class_name('JobPosting') }
    it { should belong_to(:candidate).class_name('Candidate') }
  end

  describe 'validations' do
    it { should validate_presence_of(:candidate_id) }
    it { should validate_presence_of(:job_posting_id) }
  end
end
