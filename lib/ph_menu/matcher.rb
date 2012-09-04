module PhMenu
  module Matcher
    class_eval do
      attr_accessor :request
    end

    def detect_matches(item)
      item.current = true if matches? item
      item.items.each { |child| detect_matches(child) }
    end
  end
end
