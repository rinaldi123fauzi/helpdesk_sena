class MyWorker
  @queue = :my_queue

  def self.perform(argument1)
    # Perform your task here
    puts "Performing task #{argument1}"
  end
end
  