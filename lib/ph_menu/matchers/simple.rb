require 'ph_menu/matchers'

module PhMenu
  module Matchers
    class Simple
      include PhMenu::Matcher

      def matches?(item)
        item.uri == request.original_fullpath
      end
    end
  end
end
