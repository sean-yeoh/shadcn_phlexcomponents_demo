class Book
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :title, :string
  validates :title, presence: true
end
