require "gobject/gtk"
require "../dsl/macros"

module V6
  module Ui
    abstract class Component
      include Dsl::Macros

      property parent : Component?
      property child : Component?
      property children : Array(Component)?

      #
      # The macro `property?` is a monkey-patched version
      # of the `property` macro which does basically the same, the only difference is that
      # this macro gives you an ability to define instance variables by a function call and not an assignment call.
      #
      property? expand : Bool = false
      property? fill : Bool = false
      property? padding : Int32 = 0

      abstract def initialize : Void
      abstract def initialize(@child : Component) : Void
      abstract def initialize(@children : Array(Component)) : Void

      abstract def native : Gtk::Widget
      abstract def render : Gtk::Widget
    end
  end
end
