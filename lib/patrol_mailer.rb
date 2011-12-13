
require "smtp_api_header"

class PatrolMailer < ActionMailer::Base
  default :from => "from@example.com"

  def report(content)
    @content = content

    hdr = SmtpApiHeader.new()
    hdr.setCategory("initial")
    hdr.addFilterSetting("subscriptiontrack", "enable", 0)
    headers["X-SMTPAPI"] = hdr.asJSON
    timestamp = Time.now.strftime("%Y-%m-%d %H:%M")

    mail(:to => "bc@billetto.dk", :subject => "Patrol report (#{timestamp})") do |format|
      format.html { render :text => content }
      format.text { render :text => content }
    end
  end

end

