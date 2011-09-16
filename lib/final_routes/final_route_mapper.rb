module FinalRoutes
  module FinalRouteMapper
    def final(&blk)
      @set.add_final(blk)
    end
  end
end
