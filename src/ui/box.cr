require "./component"

module V6
  module Ui
    class Box < Component
      property child : Component?
      property children : Array(Component)?

      property app_paintable : Bool?
      property baseline_position : Gtk::BaselinePosition?
      property border_width : UInt32?
      property can_default : Bool?
      property can_focus : Bool?
      property double_buffered : Bool?
      property events : Gdk::EventMask?
      property expand : Bool?
      property focus_on_click : Bool?
      property halign : Gtk::Align?
      property has_default : Bool?
      property has_focus : Bool?
      property has_tooltip : Bool?
      property height_request : Int32?
      property hexpand : Bool?
      property hexpand_set : Bool?
      property homogeneous : Bool?
      property is_focus : Bool?
      property margin : Int32?
      property margin_bottom : Int32?
      property margin_end : Int32?
      property margin_left : Int32?
      property margin_right : Int32?
      property margin_start : Int32?
      property margin_top : Int32?
      property name : String?
      property no_show_all : Bool?
      property opacity : Float64?
      property orientation : Gtk::Orientation?
      property parent : Gtk::Container?
      property receives_default : Bool?
      property resize_mode : Gtk::ResizeMode?
      property sensitive : Bool?
      property spacing : Int32?
      property style : Gtk::Style?
      property tooltip_markup : String?
      property tooltip_text : String?
      property valign : Gtk::Align?
      property vexpand : Bool?
      property vexpand_set : Bool?
      property visible : Bool?
      property width_request : Int32?

      def initialize : Void
      end

      def initialize(@child : Component) : Void
      end

      def initialize(@child : Component, app_paintable : Bool?, baseline_position : Gtk::BaselinePosition?, border_width : UInt32?, can_default : Bool?, can_focus : Bool?, double_buffered : Bool?, events : Gdk::EventMask?, expand : Bool?, focus_on_click : Bool?, halign : Gtk::Align?, has_default : Bool?, has_focus : Bool?, has_tooltip : Bool?, height_request : Int32?, hexpand : Bool?, hexpand_set : Bool?, homogeneous : Bool?, is_focus : Bool?, margin : Int32?, margin_bottom : Int32?, margin_end : Int32?, margin_left : Int32?, margin_right : Int32?, margin_start : Int32?, margin_top : Int32?, name : String?, no_show_all : Bool?, opacity : Float64?, orientation : Gtk::Orientation?, parent : Gtk::Container?, receives_default : Bool?, resize_mode : Gtk::ResizeMode?, sensitive : Bool?, spacing : Int32?, style : Gtk::Style?, tooltip_markup : String?, tooltip_text : String?, valign : Gtk::Align?, vexpand : Bool?, vexpand_set : Bool?, visible : Bool?, width_request : Int32?) : Void
        @app_paintable = app_paintable
        @baseline_position = baseline_position
        @border_width = border_width
        @can_default = can_default
        @can_focus = can_focus
        @child = child
        @double_buffered = double_buffered
        @events = events
        @expand = expand
        @focus_on_click = focus_on_click
        @halign = halign
        @has_default = has_default
        @has_focus = has_focus
        @has_tooltip = has_tooltip
        @height_request = height_request
        @hexpand = hexpand
        @hexpand_set = hexpand_set
        @homogeneous = homogeneous
        @is_focus = is_focus
        @margin = margin
        @margin_bottom = margin_bottom
        @margin_end = margin_end
        @margin_left = margin_left
        @margin_right = margin_right
        @margin_start = margin_start
        @margin_top = margin_top
        @name = name
        @no_show_all = no_show_all
        @opacity = opacity
        @orientation = orientation
        @parent = parent
        @receives_default = receives_default
        @resize_mode = resize_mode
        @sensitive = sensitive
        @spacing = spacing
        @style = style
        @tooltip_markup = tooltip_markup
        @tooltip_text = tooltip_text
        @valign = valign
        @vexpand = vexpand
        @vexpand_set = vexpand_set
        @visible = visible
        @width_request = width_request
      end

      def initialize(@children : Array(Component)) : Void
      end

      def update : Void
        @child.try(&.update)

        @children.try(&.each do |child|
          child.update
        end)
      end

      def render : Gtk::Widget
        box = Gtk::Box.new(
          app_paintable: @app_paintable,
          baseline_position: @baseline_position,
          border_width: @border_width,
          can_default: @can_default,
          can_focus: @can_focus,
          child: @child,
          double_buffered: @double_buffered,
          events: @events,
          expand: @expand,
          focus_on_click: @focus_on_click,
          halign: @halign,
          has_default: @has_default,
          has_focus: @has_focus,
          has_tooltip: @has_tooltip,
          height_request: @height_request,
          hexpand: @hexpand,
          hexpand_set: @hexpand_set,
          homogeneous: @homogeneous,
          is_focus: @is_focus,
          margin: @margin,
          margin_bottom: @margin_bottom,
          margin_end: @margin_end,
          margin_left: @margin_left,
          margin_right: @margin_right,
          margin_start: @margin_start,
          margin_top: @margin_top,
          name: @name,
          no_show_all: @no_show_all,
          opacity: @opacity,
          orientation: @orientation,
          parent: @parent,
          receives_default: @receives_default,
          resize_mode: @resize_mode,
          sensitive: @sensitive,
          spacing: @spacing,
          style: @style,
          tooltip_markup: @tooltip_markup,
          tooltip_text: @tooltip_text,
          valign: @valign,
          vexpand: @vexpand,
          vexpand_set: @vexpand_set,
          visible: @visible,
          width_request: @width_request
        )

        @child.try(box.pack_start(&.render))

        @children.try(&.each do |child|
          box.pack_start(child.render)
        end)

        box
      end
    end
  end
end
