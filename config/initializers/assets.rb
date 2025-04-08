# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"
Rails.application.config.assets.paths << Rails.root.join("app/assets/builds")

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.precompile += %w( click.mp3,snap.mp3 )
Rails.application.config.assets.precompile += %w( application.tailwind.css )
# config/initializers/assets.rb

# Agregar los archivos JSON a la precompilación
Rails.application.config.assets.precompile += %w( experience.json skills.json education.json )
