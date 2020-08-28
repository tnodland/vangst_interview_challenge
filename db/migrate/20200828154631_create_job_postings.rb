# frozen_string_literal: true

class CreateJobPostings < ActiveRecord::Migration[6.0]
  def change
    create_table :job_postings do |t|
      t.string :title
      t.string :company_name
      t.string :url
      t.timestamps
    end
  end
end
