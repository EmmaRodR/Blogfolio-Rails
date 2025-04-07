module ApplicationHelper

  def inline_svg(filename,options= {})
    file_path = Rails.root.join("app/assets/images/#{filename}.svg")
    return "(SVG not found: #{filename})" unless File.exist?(file_path)

    svg = File.read(file_path)
    if options[:class]
      svg.sub!('<svg',"<svg class=\"#{options[:class]}\"")
    end
    raw svg
  end

end
