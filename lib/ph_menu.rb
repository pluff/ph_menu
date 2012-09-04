require "ph_menu/version"
require "ph_menu/railtie" if defined? Rails

module PhMenu
  def self.configure(&block)
    block.call PhMenu::Configuration.instance
  end
end
