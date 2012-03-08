module Refinery
  module Calendar
    class EventCategorization < Refinery::Core::BaseModel
      self.table_name = 'refinery_event_categorizations'

      belongs_to :event
      belongs_to :event_category
    end
  end
end
