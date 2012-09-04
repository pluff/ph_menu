module PhMenu
  class Configuration
    include Singleton

    attr_accessor :menus, :renderers, :matchers

    def initialize
      @renderers = []
      @menus = []
      @matchers = []
    end
  end
end
