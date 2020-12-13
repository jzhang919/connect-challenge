class StaticPagesController < ApplicationController
   def home
      @totalCount = Comment.count
   	  one = Comment.where(:team => "Freshmen").all
      two = Comment.where(:team => "Sophomores").all
      three = Comment.where(:team => "Juniors").all
      four = Comment.where(:team => "Seniors").all
      @freshmenSum = 0
      @sophomoresSum = 0
      @juniorsSum = 0
      @seniorsSum = 0

   	  one.each do |post|
   		   @freshmenSum += post.mission.points
      end

      two.each do |post|
         @sophomoresSum += post.mission.points
      end

      three.each do |post|
         @juniorsSum += post.mission.points
      end

      four.each do |post|
         @seniorsSum += post.mission.points
      end

      @points = [['Freshmen', @freshmenSum], ['Sophomores', @sophomoresSum], ['Juniors', @juniorsSum], ['Seniors', @seniorsSum]].sort do |a, b|
         b[1] <=> a[1]
      end

      @winner = @points.delete_at(0)

   	  @comment = Comment.new

      @cwg = Mission.where(:category_id => Category.where(:mission_type => "Connecting with God").first.id)
      @tu = Mission.where(:category_id => Category.where(:mission_type => "Training Up").first.id)
      @gc = Mission.where(:category_id => Category.where(:mission_type => "Getting Close").first.id)
      @ro = Mission.where(:category_id => Category.where(:mission_type => "Reaching Out").first.id)
   end

   def challenges
      @connecting = Mission.where(:category_id => Category.where(:mission_type => "Connecting with God").first.id)
      @training_up = Mission.where(:category_id => Category.where(:mission_type => "Training Up").first.id)
      @getting_close = Mission.where(:category_id => Category.where(:mission_type => "Getting Close").first.id)
      @reaching_out = Mission.where(:category_id => Category.where(:mission_type => "Reaching Out").first.id)
   end

   def stats
      @totalCount = Comment.count
      one = Comment.where(:team => "Freshmen").all
      two = Comment.where(:team => "Sophomores").all
      three = Comment.where(:team => "Juniors").all
      four = Comment.where(:team => "Seniors").all
      @freshmenSum = 0
      @sophomoresSum = 0
      @juniorsSum = 0
      @seniorsSum = 0

      one.each do |post|
         @freshmenSum += post.mission.points
      end

      two.each do |post|
         @sophomoresSum += post.mission.points
      end

      three.each do |post|
         @juniorsSum += post.mission.points
      end

      four.each do |post|
         @seniorsSum += post.mission.points
      end

      @points = [['Freshmen', @freshmenSum], ['Sophomores', @sophomoresSum], ['Juniors', @juniorsSum], ['Seniors', @seniorsSum]].sort do |a, b|
         b[1] <=> a[1]
      end

      # @points = [[team, pointSum],...]

      @winner = @points.delete_at(0)

   end

   def completed
      @comments = Comment.page(params[:page]).order('created_at DESC')
   end 

   def powerranking
      names = Comment.uniq.pluck(:name)
   end

end
