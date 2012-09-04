require "ph_menu/version"

module PhMenu
  def self.configure(&block)
    block.call PhMenu::Configuration.instance
  end
end
