class Message
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  field :read, type: Mongoid::Boolean
end
