module FinalRoutes
  class Engine < Rails::Engine
    initializer 'final_routes.add_final_mapper', :before => :set_routes_reloader do |app|
      app.routes.extend(FinalRoutes::RouteSetFinalizer)
      ActionDispatch::Routing::Mapper.module_eval { include FinalRoutes::FinalRouteMapper }
    end
  end
end
