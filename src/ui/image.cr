require "./component"

module V6
  module Ui
    class Image < Component
      getter widget : Gtk::Widget?

      delegate app_paintable, to: @widget.not_nil!
      delegate can_default, to: @widget.not_nil!
      delegate can_focus, to: @widget.not_nil!
      delegate double_buffered, to: @widget.not_nil!
      delegate events, to: @widget.not_nil!
      delegate? expand, to: @widget.not_nil!, as: _expand
      delegate file, to: @widget.not_nil!
      delegate focus_on_click, to: @widget.not_nil!
      delegate gicon, to: @widget.not_nil!
      delegate halign, to: @widget.not_nil!
      delegate has_default, to: @widget.not_nil!
      delegate has_focus, to: @widget.not_nil!
      delegate has_tooltip, to: @widget.not_nil!
      delegate height_request, to: @widget.not_nil!
      delegate hexpand, to: @widget.not_nil!
      delegate hexpand_set, to: @widget.not_nil!
      delegate icon_name, to: @widget.not_nil!
      delegate icon_set, to: @widget.not_nil!
      delegate icon_size, to: @widget.not_nil!
      delegate is_focus, to: @widget.not_nil!
      delegate margin, to: @widget.not_nil!
      delegate margin_bottom, to: @widget.not_nil!
      delegate margin_end, to: @widget.not_nil!
      delegate margin_left, to: @widget.not_nil!
      delegate margin_right, to: @widget.not_nil!
      delegate margin_start, to: @widget.not_nil!
      delegate margin_top, to: @widget.not_nil!
      delegate name, to: @widget.not_nil!
      delegate no_show_all, to: @widget.not_nil!
      delegate opacity, to: @widget.not_nil!
      delegate pixbuf, to: @widget.not_nil!
      delegate pixbuf_animation, to: @widget.not_nil!
      delegate pixel_size, to: @widget.not_nil!
      delegate receives_default, to: @widget.not_nil!
      delegate resource, to: @widget.not_nil!
      delegate sensitive, to: @widget.not_nil!
      delegate stock, to: @widget.not_nil!
      delegate style, to: @widget.not_nil!
      delegate surface, to: @widget.not_nil!
      delegate tooltip_markup, to: @widget.not_nil!
      delegate tooltip_text, to: @widget.not_nil!
      delegate use_fallback, to: @widget.not_nil!
      delegate valign, to: @widget.not_nil!
      delegate vexpand, to: @widget.not_nil!
      delegate vexpand_set, to: @widget.not_nil!
      delegate visible, to: @widget.not_nil!
      delegate width_request, to: @widget.not_nil!
      delegate xalign, to: @widget.not_nil!
      delegate xpad, to: @widget.not_nil!
      delegate yalign, to: @widget.not_nil!
      delegate ypad, to: @widget.not_nil!

      def initialize(**kwargs) : Void
        @widget = native(**kwargs)
      end

      def initialize(@child : Component) : Void
        @child.try(&.parent = self)
      end

      def initialize(@children : Array(Component)) : Void
        @children.try(&.each do |child|
          child.parent = self
        end)
      end

      def native(**kwargs) : Gtk::Widget
        Gtk::Image.new(**kwargs)
      end

      def render : Gtk::Widget
        @widget.not_nil!
      end
    end
  end
end
