
module Patrol
  class Railtie < Rails::Railtie

    rake_tasks do
      load "tasks/patrol.rake"
    end

  end
end
