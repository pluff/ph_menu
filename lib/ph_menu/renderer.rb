module PhMenu
  module Renderer
    class_eval do
      attr_accessor :current_class, :ancestor_class, :id_generator, :level_class_generator
    end
  end
end
