module PhMenu
  module ViewHelpers
    def render_menu(name, options = {})
      options = {renderer: :default, matcher: :default}.merge(options)
      config = PhMenu::Configuration.instance
      menu = config.menus[name].constantize.new(request: controller.request, matcher: options[:matcher])
      menu.build
      menu.detect_currents
      config.renderers[options[:renderer]].constantize.new.render menu
    end
  end
end
