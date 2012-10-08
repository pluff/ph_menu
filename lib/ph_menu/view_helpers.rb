module PhMenu
  module ViewHelpers
    def render_menu(name, options = {renderer: :default, matcher: :default})
      config = PhMenu::Configuration.instance
      menu = config.menus[name].new(request: controller.request, matcher: options[:matcher])
      menu.build
      menu.detect_currents
      renderer = config.renderers[options[:renderer]].new
      renderer.render menu
    end
  end
end
