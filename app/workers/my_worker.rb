class MyWorker
  @queue = :my_queue

  def self.perform
    # Perform your task here
    puts "Performing task"
  end
end
  