class CustomPostsController < ApplicationController

  def work
    @experiences = JSON.parse(File.read(Rails.root.join('db','data', 'experience.json')))
  end

  def skills
    @skills = JSON.parse(File.read(Rails.root.join('db','data', 'skills.json')))
  end

  def education
  end

end