module Async
  class Waterfall
    attr_accessor :blocks
    def initialize
      @blocks = []
      @on_error = nil
      @on_success = nil
      @current = 0
    end

    def next_block(previous_result=nil)
      block = @blocks[@current]
      completion = lambda do |result=nil, error=nil|
        if error
          @on_error.call(result, error) if @on_error.is_a?(Proc)
        else
          @current += 1
          if @blocks.length > @current
            next_block(result)
          elsif @on_success.is_a?(Proc)
            @on_success.call(result)
          end
        end
      end
      block.call(completion, previous_result)
    end

    def self.do(&block)
      chain = Waterfall.new
      chain.blocks << block
      chain
    end

    def and_then(&block)
      @blocks << block
      self
    end

    def on_success(&block)
      @on_success = block
      self
    end

    def on_error(&block)
      @on_error = block
      self
    end

    def start
      next_block()
    end
  end
end