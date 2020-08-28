# frozen_string_literal: true

require 'rails_helper'

RSpec.describe JobPosting, type: :model do
  describe 'associations' do
    it { should have_many(:candidates).class_name('Candidate') }
    it { should have_many(:job_applications).class_name('JobApplication') }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:company_name) }
  end
end
