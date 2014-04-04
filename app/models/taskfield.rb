#extends FieldType

class TaskField
  include Mongoid::Document

  field :name, type: String
  field :type, type: FieldType
  field :mobile, type: Boolean
  field :order, type: Integer
  field :value, type: String
  #String array
  field :choices, type: Array

  validates :name, presence: true
  validates :type, presence: true
  validates :mobile, presence: true

  belongs_to :dyno
end