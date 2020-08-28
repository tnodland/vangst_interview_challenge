# frozen_string_literal: true

class JobPosting < ApplicationRecord
  has_many :job_applications
  has_many :candidates, through: :job_applications

  validates :title, presence: true
  validates :company_name, presence: true
end
