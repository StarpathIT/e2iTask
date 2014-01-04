class Task
  include Mongoid::Document
  include Mongoid::Timestamps

  field :taskTitle, type: String
  field :taskDescription, type: String
  field :assignTo, type: String
  #field :visibleFields, type: String

  validates :taskTitle, presence: true
  validates :taskDescription, presence: true
  validates :assignTo, presence: true
  #validates :visibleFields, presence: true

  #belongs_to :user
end