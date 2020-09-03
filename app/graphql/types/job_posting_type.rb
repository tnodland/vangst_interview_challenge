module Types
  class JobPostingType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :company_name, String, null: true
    field :url, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
