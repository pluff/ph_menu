module PhMenu
  class ViewHelpers

    def render_menu(name, renderer = :default)
      config = PhMenu::Configuration.instance
      menu = config.menus[name].new.build
      config.renderers[renderer].new.render(menu)
    end
  end
end
