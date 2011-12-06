
module Patrol
  class Railtie < Rails::Railtie

    puts "loading task"

    rake_tasks do
      load "tasks/patrol.rake"
    end

  end
end

