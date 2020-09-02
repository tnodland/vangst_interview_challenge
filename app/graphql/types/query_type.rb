# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :hello_world, # name of method
          String, # Type the data will be
          null: false, # If it can ever return a null value
          description: 'An example field added for your reference!' # Optional Descriotion

    field :candidate, CandidateType, null: true do
      description 'test'
      argument :id, ID, required: true
    end

    field :jobApplications, JobApplicationType, null: true do
      description "Find a single job application by its' id"
      argument :id, ID, required: true
    end

    def candidate(id)
      Candidate.find(id[:id])
    end

    def jobApplications(id)
      JobApplication.find(id[:id])
    end

    def hello_world
      'Hello World - This is your Interview Challenge!\nGood luck.'
    end
  end
end
