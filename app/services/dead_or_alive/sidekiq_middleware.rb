module DeadOrAlive
  class SidekiqMiddleware
    def call(worker_instance, item, queue)
      yield
      DeadOrAlive::ControllerRepo.new.worker!(worker_instance.class)
    end
  end
end
