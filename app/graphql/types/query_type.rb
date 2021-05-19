module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # Return all the items from the library
    field :items, [Types::ItemType], null: false, description: "Returns a list of items in the martian library"
    def items
      Item.preload(:user)
    end

    field :me, Types::UserType, null: true
    def me
      context[:current_user]
    end
  end
end
