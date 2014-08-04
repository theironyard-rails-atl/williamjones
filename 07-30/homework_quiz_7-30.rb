first_question = {
  :question => "Why do you want to study Ruby?",
  :choices => [
    "For the ladies",
    "To learn",
    "I'm crazy"
    ],
  :answer => 1
}

second_question = {
  :question => "How are you studying Ruby?",
  :choices => [
    "Online",
    "College",
    "The Iron Yard"
  ],
  :answer => 2
}

third_question = {
  :question => "Where are you studying Ruby?",
  :choices => [
    "Atlanta",
    "New York City",
    "Miami"
  ],
  :answer => 0
}

questions_list = [ first_question, second_question, third_question ].shuffle

score = 0

questions_list.each do |the_current_question|
  puts the_current_question[:question]
  puts the_current_question[:choices]
  user_input = gets.chomp
  puts "You typed in '#{user_input}'"

  index_of_correct_answer = the_current_question[:answer]
  correct_answer =
the_current_question[:choices][index_of_correct_answer]

 if user_input.downcase == correct_answer.downcase
  puts "You got it correct"
  score = score + 1 # or score += 1. Means the same thing
 else
  puts "You got it incorrect"
  puts "The correct answer was #{correct_answer}"
 end
end

puts "Total is: #{score}"
