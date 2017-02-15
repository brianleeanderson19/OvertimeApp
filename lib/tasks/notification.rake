namespace :notification do
  desc "Sends SMS notification to employees asking them to log overtime"
  task sms: :environment do
   # Schedule to run at Sunday at 5pm
   # Iterate over all employees
   # Skip Admin users
   # Send a message that has instructions and a link to log time
   # User.all.each do |user|
   #  SmsTool.send_sms()
   # end
   # number: "5555555555"
   # no spaces or dashes
   # has to be exactly 10 characters
   # all characters have to be numbers
  end

end

