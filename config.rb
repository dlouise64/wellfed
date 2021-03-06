###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

activate :minify_html do |html|
  # html.remove_multi_spaces        = true   # Remove multiple spaces
  # html.remove_comments            = true   # Remove comments
  html.remove_intertag_spaces     = false  # Remove inter-tag spaces
  # html.remove_quotes              = true   # Remove quotes
  # html.simple_doctype             = false  # Use simple doctype
  # html.remove_script_attributes   = true   # Remove script attributes
  # html.remove_style_attributes    = true   # Remove style attributes
  # html.remove_link_attributes     = true   # Remove link attributes
  # html.remove_form_attributes     = false  # Remove form attributes
  # html.remove_input_attributes    = true   # Remove input attributes
  # html.remove_javascript_protocol = true   # Remove JS protocol
  # html.remove_http_protocol       = false  # Remove HTTP protocol
  # html.remove_https_protocol      = false  # Remove HTTPS protocol
  # html.preserve_line_breaks       = false  # Preserve line breaks
  # html.simple_boolean_attributes  = true   # Use simple boolean attributes
  # html.preserve_patterns          = nil    # Patterns to preserve
end

activate :blog

activate :deploy do |deploy|
  deploy.deploy_method = :git
  # Optional Settings
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
  # deploy.branch   = 'custom-branch' # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end

set :relative_links, true
###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  activate :relative_assets
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
