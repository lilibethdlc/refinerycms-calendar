require 'will_paginate/array'
module Refinery
  module Calendar
    module Admin
      class EventsController < ::Refinery::AdminController
        before_filter :find_categories, :except => :index

        crudify :'refinery/calendar/event', :xhr_paging => true

        def index
          search_all_events if searching?

          @archived = Event.archive
          @upcoming = Event.upcoming
          @current = Event.current

          @events = (@archived | @upcoming | @current)

          @events = @events.paginate(page: 1, per_page: 10)

          render :partial => 'events' if request.xhr?
        end
        protected

        def find_categories
          @event_categories = EventCategory.all
        end
      end
    end
  end
end
