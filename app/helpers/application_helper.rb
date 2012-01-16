module ApplicationHelper
  def wicked_pdf_stylesheet_link_tag(*sources)
    sources.collect do |source|
      "<style type='text/css'>#{Rails.application.assets.find_asset(source + '.css')}</style>"
    end.join("\n").html_safe
  end
end
