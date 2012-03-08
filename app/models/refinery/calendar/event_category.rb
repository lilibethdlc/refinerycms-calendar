module Refinery
  module Calendar
    class EventCategory < Refinery::Core::BaseModel
      extend FriendlyId

      self.table_name = 'refinery_event_categories'
      default_scope order('name ASC')

      has_many :event_categorizations
      has_many :events, :through => :event_categorizations

      validates :name, :presence => true

      friendly_id :name, :use => :slugged
    end
  end
end
