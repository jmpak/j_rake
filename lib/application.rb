class Application
  def initialize(dir='.')
    raise RuntimeError unless File.exists?(File.join(dir, 'Rakefile'))
  end
end
