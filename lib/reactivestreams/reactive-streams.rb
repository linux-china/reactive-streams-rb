module ReactiveStreams
  VERSION = "0.0.1"

  class Publisher
    #@param subscriber [ReactiveStreams::Subscriber]
    def subscribe(subscriber)
      raise "Subscribe not implemented"
    end
  end

  class Subscription

    def request(n)
    end

    def cancel

    end

  end

  class Subscriber

    def initialize(&block)
      self.instance_eval(&block)
    end

    #@param subscription [ReactiveStreams::Subscription]
    def on_subscribe(subscription)

    end

    def on_next(value)
    end

    def on_error(exception)

    end

    def on_complete

    end
  end
end