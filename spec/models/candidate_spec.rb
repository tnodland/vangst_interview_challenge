# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Candidate, type: :model do
  describe 'associations' do
    it { should have_many(:job_postings).class_name('JobPosting') }
    it { should have_many(:job_applications).class_name('JobApplication') }
  end

  describe 'validations' do
    it { should validate_presence_of(:email) }
  end
end
