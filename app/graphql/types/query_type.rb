# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :getCandidate
          [Types::CandidateType],
          null: false,
          description: "Returns a single candidate by id"

    field :hello_world, # name of method
          String, # Type the data will be
          null: false, # If it can ever return a null value
          description: 'An example field added for your reference!' # Optional Descriotion

    def getCandidate
      Candidate.get()
    end

    def hello_world
      'Hello World - This is your Interview Challenge!\nGood luck.'
    end
  end
end
