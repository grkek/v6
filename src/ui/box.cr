require "./component"

module V6
  module Ui
    class Box < Component
      getter widget : Gtk::Widget?

      delegate app_paintable, to: @widget.not_nil!
      delegate baseline_position, to: @widget.not_nil!
      delegate border_width, to: @widget.not_nil!
      delegate can_default, to: @widget.not_nil!
      delegate can_focus, to: @widget.not_nil!
      delegate double_buffered, to: @widget.not_nil!
      delegate events, to: @widget.not_nil!
      delegate? expand, to: @widget.not_nil!, as: _expand
      delegate focus_on_click, to: @widget.not_nil!
      delegate halign, to: @widget.not_nil!
      delegate has_default, to: @widget.not_nil!
      delegate has_focus, to: @widget.not_nil!
      delegate has_tooltip, to: @widget.not_nil!
      delegate height_request, to: @widget.not_nil!
      delegate hexpand, to: @widget.not_nil!
      delegate hexpand_set, to: @widget.not_nil!
      delegate homogeneous, to: @widget.not_nil!
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
      delegate orientation, to: @widget.not_nil!
      delegate receives_default, to: @widget.not_nil!
      delegate resize_mode, to: @widget.not_nil!
      delegate sensitive, to: @widget.not_nil!
      delegate spacing, to: @widget.not_nil!
      delegate style, to: @widget.not_nil!
      delegate tooltip_markup, to: @widget.not_nil!
      delegate tooltip_text, to: @widget.not_nil!
      delegate valign, to: @widget.not_nil!
      delegate vexpand, to: @widget.not_nil!
      delegate vexpand_set, to: @widget.not_nil!
      delegate visible, to: @widget.not_nil!
      delegate width_request, to: @widget.not_nil!

      def initialize(**kwargs) : Void
        @widget = native(**kwargs)
      end

      def initialize(@child : Component, **kwargs) : Void
        @child.try(&.parent = self)

        @widget = native(**kwargs)
      end

      def initialize(@children : Array(Component), **kwargs) : Void
        @children.try(&.each do |child|
          child.parent = self
        end)

        @widget = native(**kwargs)
      end

      def native(**kwargs) : Gtk::Widget
        Gtk::Box.new(**kwargs)
      end

      def render : Gtk::Widget
        @child.try do |child|
          @widget.try do |widget|
            widget.as(Gtk::Box).pack_start(child.render, expand: child.expand, fill: child.fill, padding: child.padding)
          end
        end

        @children.try do |children|
          children.each do |child|
            @widget.try do |widget|
              widget.as(Gtk::Box).pack_start(child.render, expand: child.expand, fill: child.fill, padding: child.padding)
            end
          end
        end

        @widget.not_nil!
      end
    end
  end
end
