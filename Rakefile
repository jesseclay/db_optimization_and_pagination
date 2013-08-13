#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Karmaville::Application.load_tasks


namespace :db do
  task :fill_in_user_karma => :environment do
    users = User.all
    iterator = 0
    users.each do |user|
      iterator = iterator + 1
      if(iterator%10000 == 0)
        puts iterator.to_s + " / " + users.length.to_s
      end
      user.update_attribute(:running_karma_total, user.karma_points.sum(:value))
      p "saving user #{iterator}"
    end
  end
end


