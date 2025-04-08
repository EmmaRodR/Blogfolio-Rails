class CustomPostsController < ApplicationController
  def work
    file_path = Rails.root.join('db', 'data', 'experience.json')
    if File.exist?(file_path)
      @experiences = JSON.parse(File.read(file_path))
    else
      Rails.logger.error "Archivo de experiencias no encontrado en #{file_path}"
      @experiences = []
    end
  end

  def skills
    file_path = Rails.root.join('db', 'data', 'skills.json')
    if File.exist?(file_path)
      @skills = JSON.parse(File.read(file_path))
    else
      Rails.logger.error "Archivo de habilidades no encontrado en #{file_path}"
      @skills = []
    end
  end

  def education
  end
end
