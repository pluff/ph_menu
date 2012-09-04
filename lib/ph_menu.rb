require "ph_menu/all"

module PhMenu
  def self.configure(&block)
    block.call PhMenu::Configuration.instance
  end
end
