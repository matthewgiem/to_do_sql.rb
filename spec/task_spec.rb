require("spec_helper")

describe(Task) do
  describe('#save') do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1})
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end
  describe("#description") do
    it("lets you read the description out") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1})
      expect(test_task.description()).to(eq("learn SQL"))
    end
  end
  describe("#list_id") do
    it("lets you read the list ID out") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1})
      expect(test_task.list_id()).to(eq(1))
    end
  end
  describe('.all') do
    it("is empty at first, will return an array of saved objects") do
      expect(Task.all()).to(eq([]))
    end
  end
  describe('#==') do
    it('will return true if two tasks have the same description') do
      test1 = Task.new({:description => 'learn SQL', :list_id => 1})
      test2 = Task.new({:description => 'learn SQL', :list_id => 1})
      expect(test1).to(eq(test2))
    end
  end
end
