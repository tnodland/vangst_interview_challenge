# frozen_string_literal: true

class Candidate < ApplicationRecord
  has_many :job_applications
  has_many :job_postings, through: :job_applications

  validates :email, presence: true
end
