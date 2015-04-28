class Task

  @@all_tasks = []

  define_method(:initialize) do |description|
    @description = description
  end


  define_method(:description) do
    @description
  end


  def self.all
    @@all_tasks
  end

  def save
    @@all_tasks << self
  end

  def self.clear
    @@all_tasks = []
  end


end
