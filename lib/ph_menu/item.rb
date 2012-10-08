class PhMenu::Item

  attr_reader :parent, :level
  attr_accessor :name, :items, :uri

  def initialize
    @level = 0
    @items = []
  end

  def current?
    !!@current
  end

  def current=(val)
    @current = val
    update_ancestors
  end

  def current_ancestor?
    !!@current_ancestor
  end

  def current_ancestor=(val)
    @current_ancestor = val
    update_ancestors
  end

  def parent=(val)
    @parent = val
    @level = parent.level+1 if parent
  end

  def add_item(name, options = {}, &block)
    itemObj = self.class.new
    itemObj.name = name
    itemObj.uri = options[:uri]
    itemObj.parent = self
    itemObj.current = true if options[:current]
    self.items << itemObj
    itemObj.instance_eval(&block) if block
    itemObj
  end

  private

  #TODO: This will cause a bug with multiple currents ad current = false
  def update_ancestors
    parent.current_ancestor = (current? or current_ancestor?) if parent
  end
end
