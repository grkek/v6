require "gobject/gtk"

module V6
  module Ui
    abstract class Component
      property child : Component?
      property children : Array(Component)?

      abstract def initialize : Void
      abstract def initialize(@child : Component) : Void
      abstract def initialize(@children : Array(Component)) : Void
      abstract def update : Void
      abstract def render : Gtk::Widget
    end
  end
end
