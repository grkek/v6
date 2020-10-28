require "./component"

module V6
  module Ui
    class Label < Component
      property text : String = ""

      def initialize : Void
      end

      def initialize(@text : String) : Void
      end

      def initialize(@child : Component) : Void
      end

      def initialize(@children : Array(Component)) : Void
      end

      def render : Gtk::Widget
        Gtk::Label.new(@text)
      end
    end
  end
end
