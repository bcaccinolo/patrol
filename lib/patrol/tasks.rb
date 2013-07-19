
namespace :patrol do

  desc "Launch the patrol"
  task :go => :environment do
    log = Logger.new("/tmp/patrol.log")
    output = ""
    timestamp = Time.now.strftime("%Y-%m-%d %H:%M")
    output << "[#{timestamp}] Launch the patrol "
    output << "\n"

    roadmap = YAML.load_file File.join(Rails.root, "config", "patrol.yml")
    roadmap.values.each do |rule|
      output << rule["title"]
      output << "\n"
      output << "=> #{eval(rule["request"])}"
      output << "\n"
    end

    puts output
    log.info(output)

    PatrolMailer.report(output).deliver

  end

end
