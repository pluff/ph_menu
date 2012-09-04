require "ph_menu/view_helpers"

module PhMenu
  class Railtie < Rails::Railtie
    initializer 'ph_menu.view_helpers' do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
