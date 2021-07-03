class RussianHill
  class Railtie < ::Rails::Railtie
    initializer :cablecar do
      ActiveSupport.on_load :action_view do
        ActionView::Template.register_template_handler :cablecar, CableCarHandler
      end

      Mime::Type.register "text/vnd.cablecar.json", :cablecar
    end
  end
end
