module Refinery
  module Calendar
    module Admin
      class EventCategoriesController < ::Refinery::AdminController

        crudify 'refinery/calendar/event_category', xhr_paging: true, title_attribute: :name

      end
    end
  end
end
