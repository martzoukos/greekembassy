###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page "/email.html", :layout => "/layouts/email.haml"
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# activate :livereload

# Methods defined in the helpers block are available in templates

# Email template variables
@font__stack = '"Trebuchet MS", "Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Tahoma, sans-serif'
@color__blue = "#36a1cd"
@color__blue__dark = "#2a2f76"
@color__red = "#c22630"
@color__brown = "#9e835b"
@font__heading_1 = "font-size: 76px; line-height: 78px; color: #{@color__blue};"
@font__heading_2 = "font-size: 43px; line-height: 45px; color: #{@color__blue};"
@font__heading_3 = "font-size: 21px; font-weight: bold; line-height: 30px; color: #{@color__blue};"
@font__heading_4 = "font-size: 16px; font-weight: bold; color: #{@color__blue};"
@font__copy = "font-family: #{@font__stack}; font-size: 24px; line-height: 30px;"
@font__note = "font-family: #{@font__stack}; font-size: 12px; line-height: 18px;"

helpers do
  def vertical_padding(height, responsive_class = "", colspan = 1)
    return "<tr><td align='center' class='#{responsive_class}' colspan='#{colspan}' height='#{height}'></td></tr>".html_safe
  end
  
  def email_image(src, alt, width = "auto", height = "auto")
    return image_tag(src, alt: alt, style: "border: 0; display: block; font-family: #{@font__stack}; font-size: 14px; line-height: #{height}px; height: #{height}px; text-align: center; color: black; width: #{width}px;", width: width, height: height )
  end
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
