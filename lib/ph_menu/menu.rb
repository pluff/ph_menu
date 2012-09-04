class PhMenu::Menu

  attr_accessor :item_class
  attr_reader :root

  delegate :items, to: :root

  def initialize(options = {})
    options = {item_class: PhMenu::Item}.merge(options)
    self.item_class = options[:item_class]
  end

  def build
    unless @root
      @root = item_class.new
      @root.instance_eval &structure
    end
    self
  end

  def build!(&block)
    @root = nil
    self.build(&block)
  end

  def structure
    raise NoMethodError, 'structure method MUST be overloaded!'
  end
end
