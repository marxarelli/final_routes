module FinalRoutes
  module RouteSetFinalizer
    def add_final(blk)
      (@finals ||= []) << blk
    end

    def clear!
      @finals.clear if @finals
      super
    end

    def finalize!
      @finals.each { |final| draw(&final) } if @disable_clear_and_finalize
      super
    end
  end
end
