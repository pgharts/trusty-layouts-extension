class LayoutsExtension < TrustyCms::Extension
  version YAML::load_file(File.join(File.dirname(__FILE__), 'VERSION'))
  description "A set of useful extensions to standard Layouts."
  url "http://github.com/squaretalent/trusty-share-layouts-extension"
  
  def activate
    # Shared Layouts
    RailsPage
    ActionController::Base.send :include, ShareLayouts::Controllers::ActionController
    ActionView::Base.send :include, ShareLayouts::Helpers::ActionView
    
    # Nested Layouts
    Page.send   :include, NestedLayouts::Tags::Core
    
    # HAML Layouts
    Layout.send  :include, HamlLayouts::Models::Layout
    Page.send    :include, HamlLayouts::Models::Page
    HamlFilter
  end
  
end