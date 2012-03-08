module Refinery
  module Calendar
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Calendar

      engine_name :refinery_calendar

      initializer "register refinerycms_events plugin" do |app|
        Refinery::Plugin.register do |plugin|
          plugin.name = "events"
          plugin.url = {
            :controller => 'refinery/calendar/admin/events',
            :action => 'index'
          }
          plugin.menu_match = %r{refinery/calendar/event(.+?)?$}
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/calendar/event'
          }

        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Calendar)
      end
    end
  end
end
