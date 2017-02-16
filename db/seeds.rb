@user = User.create(email: "test@test.com", 
                    password: "asdfasdf", 
                    password_confirmation: "asdfasdf", 
                    first_name: "John", 
                    last_name: "Doe",
                    phone: "4355808227")

puts "1 user created"

AdminUser.create(email: "admin@test.com", 
                  password: "asdfasdf", 
                  password_confirmation: "asdfasdf", 
                  first_name: "Admin", 
                  last_name: "Name", 
                  phone: "4355808227")

puts "1 Admin user created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content asdf sdaf sadf sdaf sdf sad asdfsad fasdf sadf sadfsadf sdafdsafas daf dsaf sadff asdf asdfsadfas dfdsf asdf asdf dsaf dsfas dfsadf sdaf sdaf fasdfdsafasd fsdaf", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been Created"

  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts "3 Audit logs have been Created"