module PhMenu
  class Renderers::TemplateRenderer
    include PhMenu::Renderer

    def initialize
      current_class = 'current'
      ancestor_class = 'current_ancestor'
      #id_generator = nil
      #level_class_generator = Proc.new { |item| "level#{item.level}"}
    end

    def render(menu)
      view = ActionView::Base.new(Rails.application.config.paths['app/views'])
      view.assign({menu: menu, renderer: self})
      view.render(partial: File.join('menus',menu.class.name.underscore))
    end
  end
end

