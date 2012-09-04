module PhMenu
  class Configuration
    include Singleton

    attr_accessor :menus
    attr_accessor :renderers

    def initialize
      @default_renderer = nil
      @renderers = []
      @menus = []
      #@current_class = 'current'
      #@current_ancestor_class = 'current_ancestor'
      #@id_generator = nil
      #@level_class_generator = Proc.new {|item| "level_#{item.level}" }
    end
  end
end
