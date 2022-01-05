# users hash , having 1 k-v as username-password
users = [
           { username: "partul", password: "p1"},    
           { username: "aryan" , password: "p2"},
           { username: "devanshu" , password: "p3"},
           { username: "modi" , password: "p4"}
        ]
#method to authenticate user records
def auth_user(username , password, list_of_users)
  list_of_users.each do |user| 
    if user[:username] == username && user  [:password] == password
      return user 
    else
      return "Invalid entry"
    end
  end
end

puts "Welcome to Authenticator 1.0"
30.times {print "-"}
puts
puts "If the user and password matched then the user object is returned"

# while loop for number of attempts 3
attempts = 1
while attempts < 4

 #user entry
 puts "Enter the username" 
 n1 = gets.chomp
 puts "Enter the password"
 n2 = gets.chomp

 authen = auth_user(n1 , n2 , users)
 puts authen

 #exit condition
 puts "Press n to quit or any key to continue: "
 input = gets.chomp.downcase
  break if input == "n"
  attempts = attempts + 1
end 