# frozen_string_literal: true

class JobApplication < ApplicationRecord
  belongs_to :candidate
  belongs_to :job_posting

  validates :candidate_id, presence: true
  validates :job_posting_id, presence: true
end
