class PhMenu::Menu

  attr_accessor :item_class, :matcher, :request
  attr_reader :root

  delegate :items, to: :root

  def initialize(options = {})
    options = {item_class: PhMenu::Item, matcher: :default, request: nil}.merge(options)

    @item_class = options[:item_class]
    @matcher = PhMenu::Configuration.instance.matchers[options[:matcher]].constantize.new
    @request = options[:request]
  end

  def build
    unless @root
      @root = @item_class.new
      @root.instance_eval &structure
    end
    self
  end

  def build!(&block)
    @root = nil
    self.build(&block)
  end

  def detect_currents
    if @matcher
      build unless @root
      @matcher.request = @request
      @matcher.detect_matches(@root)
    end
  end

  def structure
    raise NoMethodError, 'structure method MUST be overloaded!'
  end
end
