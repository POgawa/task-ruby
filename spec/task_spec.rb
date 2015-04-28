require "rspec"
require "pry"
require "task"



describe(Task) do
  describe('description') do
    it('adds a description to the task class') do
      test_task = Task.new('working on stuff')
      expect(test_task.description()).to(eq('working on stuff'))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it('adds a task to the arry of saved tasks') do
      test_task = Task.new("wash the lion")
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe('clear') do
    it('empties the saved tasks') do
      Task.new('wash the lion').save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end



end
