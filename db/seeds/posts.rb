5.times do |i|
  Post.create(
    title: "Sample Post Admin #{i + 1}",
    body: "This is the body of sample post number #{i + 1}. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.",
    user_id: 1
  )
end

5.times do |i|
  Post.create(
    title: "Sample Post from User 2",
    body: "This is the body of sample post number #{i + 1}. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.",
    user_id: 2
  )
end

5.times do |i|
  Post.create(
    title: "Sample Post from User 3",
    body: "This is the body of sample post number #{i + 1}. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.",
    user_id: 3
  )
end