# Uncomment this if you reference any of your controllers in activate
require_dependency 'application_controller'

class LayoutsExtension < Radiant::Extension
  version "0.3.1"
  description "Allows Radiant layouts to be used as layouts for standard Rails actions. Includes http://github.com/moklett/radiant-nested-layouts-extension"
  url "http://github.com/squaretalent/radiant-layouts-extension"
  
  def activate
    RailsPage
    ActionController::Base.send :include, ShareLayouts::RadiantLayouts
    ActionView::Base.send :include, ShareLayouts::Helper
    Page.send :include, NestedLayouts::Tags
  end
  
end