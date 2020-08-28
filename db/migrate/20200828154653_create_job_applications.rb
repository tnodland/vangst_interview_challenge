# frozen_string_literal: true

class CreateJobApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :job_applications do |t|
      t.references :candidate, null: false, foreign_key: true
      t.references :job_posting, null: false, foreign_key: true
      t.boolean :is_active

      t.timestamps
    end
  end
end
