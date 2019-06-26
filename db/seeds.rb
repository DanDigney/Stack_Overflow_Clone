# reset the seed file 
User.destroy_all
Question.destroy_all 
Answer.destroy_all
Comment.destroy_all
Vote.destroy_all

require 'faker'

User.create!(user_name: "Dan", email: "dan", password: "123")

# creates random users  
5.times do 
  User.create!(user_name: Faker::Name.name, email: Faker::Internet.safe_email, password: "123")
end 

# creates questions 
5.times do 
  Question.create!(title: Faker::Space.meteorite + "?", content: Faker::GreekPhilosophers.quote, user_id: rand(1..5))
end 

# creates answers 
5.times do 
  Answer.create!(user_id: rand(1..5), question_id: rand(1..5), content: Faker::GreekPhilosophers.quote)
end 

# creates comments 
5.times do 
  Question.all.each do |question| 
    question.comments.create!(user_id: rand(1..5), content: Faker::GreekPhilosophers.quote)
  end 
  Answer.all.each do |answer| 
    answer.comments.create!(user_id: rand(1..5), content: Faker::GreekPhilosophers.quote)
  end
end

# creates votes 
User.all.each do |user|
  Question.all.each do |question| 
    question.votes.create!(user_id: user.id, value: [-1,1].sample )
  end
  Answer.all.each do |answer| 
    answer.votes.create!(user_id: user.id, value: [-1,1].sample )
  end
  Comment.all.each do |comment| 
    comment.votes.create!(user_id: user.id, value: [-1,1].sample )
  end
end 
