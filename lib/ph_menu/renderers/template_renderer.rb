require "ph_menu/renderers"

module PhMenu
  module Renderers
    class TemplateRenderer
      include PhMenu::Renderer

      def initialize
        @current_class = 'current'
        @ancestor_class = 'current_ancestor'
      end

      def render(menu)
        view = ActionView::Base.new(Rails.application.config.paths['app/views'])
        view.assign({menu: menu, renderer: self})
        view.render(partial: File.join('menus',menu.class.name.underscore))
      end
    end
  end
end

