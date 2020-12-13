# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all
Mission.delete_all

cwg = Category.create!(mission_type: 'Connecting with God')
tu = Category.create!(mission_type: 'Training Up')
gc = Category.create!(mission_type: 'Getting Close')
ro = Category.create!(mission_type: 'Reaching Out')

# Connecting with God
Mission.create!(name: 'Post a verse from DT with 2-3 sentences explaining how it spoke to you', points: 10, category: cwg)
Mission.create!(name: 'Pray for your LG, family, or friends for at least 10 minutes', points: 10, category: cwg)
Mission.create!(name: 'Go on a prayer walk for at least 20 minutes', points: 15, category: cwg)
Mission.create!(name: 'Read the 4 Gospels', points: 50, category: cwg)
Mission.create!(name: 'Read the Psalms', points: 75, category: cwg)
Mission.create!(name: 'Read the entire New Testament', points: 200, category: cwg)
Mission.create!(name: 'Read the entire Old Testament', points: 400, category: cwg)
Mission.create!(name: 'Memorize a hymn (video required)', points: 20, category: cwg)
Mission.create!(name: 'Memorize a Bible chapter (video required)', points: 40, category: cwg)
Mission.create!(name: 'Outline a book of the Bible thoroughly (on top of reading it)', points: 15, category: cwg)

# Getting Close
Mission.create!(name: 'Call your peer or leader', points: 20, category: gc)
Mission.create!(name: 'Meet up in person with a GP member in person', points: 30, category: gc)
Mission.create!(name: 'Video chat your Life Group and prayer requests or DT', points: 50, category: gc)
Mission.create!(name: 'Write a thank-you card/letter to someone who\'s not your peer', points: 20, category: gc)
Mission.create!(name: 'Initiate a family gathering/outing', points: 20, category: gc)

# Training Up
Mission.create!(name: 'Read any Christian book and post a personal takeaway', points: 50, category: tu)
Mission.create!(name: 'Exercise for at least 10 minutes (max 10 exercise posts)', points: 5, category: tu)
Mission.create!(name: 'Exercise for at least 30 minutes (max 10 exercise posts)', points: 10, category: tu)
Mission.create!(name: 'Learn how to play a praise song (video required) ', points: 10, category: tu)
Mission.create!(name: 'Come up with a song, dance, choreo etc. to help learn the Bible (video required)', points: 20, category: tu)
Mission.create!(name: 'Learn a recipe by cooking it 3 times (pictures required)', points: 20, category: tu)
Mission.create!(name: 'Learn a magic trick or other skill (picture, video, or future audit required)', points: 20, category: tu)

# Reaching Out
Mission.create!(name: 'Do the dishes for your family (max 5', points: 5, category: ro)
Mission.create!(name: 'Do an errand for your family (max 5)', points: 5, category: ro)
Mission.create!(name: 'Fix something around the house (max 5) ', points: 5, category: ro)
Mission.create!(name: 'Clean a room thoroughly (not your own, max 5)', points: 10, category: ro)
Mission.create!(name: 'Cook a meal for your family', points: 15, category: ro)
Mission.create!(name: 'Serve at a local church', points: 50, category: ro)
Mission.create!(name: 'Bring a non-Christian to church', points: 50, category: ro)
Mission.create!(name: 'Give a special talk on a Christian topic (with a friend if you want)', points: 100, category: ro)
Mission.create!(name: 'Find out from a friend or family member their spiritual background', points: 30, category: ro)
Mission.create!(name: 'Share your testimony with someone', points: 40, category: ro)
Mission.create!(name: 'Share the gospel with someone', points: 50, category: ro)
Mission.create!(name: 'Read a Christian book with a non-Christian friend or family member', points: 50, category: ro)
Mission.create!(name: 'Visit a nursing/convalescent home and share John 3:16 (ask permission first!)', points: 50, category: ro)




