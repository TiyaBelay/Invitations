class Event
  include Mongoid::Document

  field :event_type, type: String
  field :event_name, type: String
  field :due_date, type: Date
  field :time, type: Time
  field :partner1_first_name, type: String
  field :partner1_last_name, type: String
  field :partner2_first_name, type: String
  field :partner2_last_name, type: String

  validates_presence_of :event_type, :event_name
end
