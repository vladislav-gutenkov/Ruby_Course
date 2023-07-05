class Company
  attr_reader :title, :workers

  def initialize(title, workers)
    @title = title
    @workers = workers
  end
end
