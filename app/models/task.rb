class Task
  include Mongoid::Document
  include Mongoid::Timestamps

  field :assignTo, type: User
  field :owner, type: User
  #Array of FormField
  field :fields, type: Array
  field :template, type: Boolean
  field :parent, type: String
  validates :taskTitle, presence: true
  validates :taskDescription, presence: true
  validates :assignTo, presence: true
  #validates :visibleFields, presence: true

  #belongs_to :user
end