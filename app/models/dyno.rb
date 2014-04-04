#extends TaskField

class Dyno
  include Mongoid::Document
  include Mongoid::Timestamps

  field :assignTo, type: User
  field :owner, type: User
  #Array of FormField
  field :fields, type: Array
  field :template, type: Boolean
  field :parent, type: String

  has_many :taskfields
  validates :assignTo, presence: true
end

=begin

Dyno /Form / Dyno Definition = {
    "ObjectId" : "5154fbfe1a882294c9631a8c",
    "title" : "Cable Installation Form",
    "assignedTo" : "51c25cf50364a3b7c24240d3",
    "owner" : "51c25b640364a3b7c24240d2",
    "parent" : "null",
    "isTemplate" : true,
    "fields" : [
      {
        "name" : "Customer Name",
        "type" : "TEXT",
        "mobile" : false,
        "order" : 1,
        "value" : ""
      },
      {
        "name" : "Repair Date",
        "type" : "DATE",
        "order" : 2,
        "mobile" : false,
        "value" : ""
      },
      {
        "name" : "Repair Description",
        "type" : "TEXT",
        "mobile" : false,
        "order" : 3,
        "value" : ""
      },
      {
        "name" : "Repair Window",
        "type" : "text",
        "mobile" : false,
        "order" : 1,
        "value" : ""
      }
    ]
  }

DynoData /FormData / Dyno =
  {
    "ObjectId" : "5154fbfe1a882294c9631a8c",
    "title" : "Cable Installation Form",
    "assignedTo" : "51c25cf50364a3b7c24240d3",
    "owner" : "51c25b640364a3b7c24240d2",
    "parent" : "5154fbfe1a882294c9631a8c",
    "isTemplate" : false,
    "fields" : [
      {
        "name" : "Customer Name",
        "type" : "TEXT",
        "mobile" : false,
        "order" : 1,
        "value" : "John"
      },
      {
        "name" : "Repair Date",
        "type" : "DATE",
        "order" : 2,
        "mobile" : false,
        "value" : "4/1/2014"
      },
      {
        "name" : "Repair Description",
        "type" : "TEXT",
        "mobile" : false,
        "order" : 3,
        "value" : "Cut short the cable from outside"
      },
      {
        "name" : "Repair Window",
        "type" : "text",
        "mobile" : false,
        "order" : 1,
        "value" : "3PM-7PM"
      }
    ]
  }

=end