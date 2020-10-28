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
      property expand : Bool = false
      property focus_on_click : Bool?
      property fill : Bool = false
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
      property padding : Int32 = 0
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

      def initialize(
        @child : Component,
        app_paintable : Bool? = nil,
        baseline_position : Gtk::BaselinePosition? = nil,
        border_width : UInt32? = nil,
        can_default : Bool? = nil,
        can_focus : Bool? = nil,
        double_buffered : Bool? = nil,
        events : Gdk::EventMask? = nil,
        focus_on_click : Bool? = nil,
        halign : Gtk::Align? = nil,
        has_default : Bool? = nil,
        has_focus : Bool? = nil,
        has_tooltip : Bool? = nil,
        height_request : Int32? = nil,
        hexpand : Bool? = nil,
        hexpand_set : Bool? = nil,
        homogeneous : Bool? = nil,
        is_focus : Bool? = nil,
        margin : Int32? = nil,
        margin_bottom : Int32? = nil,
        margin_end : Int32? = nil,
        margin_left : Int32? = nil,
        margin_right : Int32? = nil,
        margin_start : Int32? = nil,
        margin_top : Int32? = nil,
        name : String? = nil,
        no_show_all : Bool? = nil,
        opacity : Float64? = nil,
        orientation : Gtk::Orientation? = nil,
        receives_default : Bool? = nil,
        resize_mode : Gtk::ResizeMode? = nil,
        sensitive : Bool? = nil,
        spacing : Int32? = nil,
        style : Gtk::Style? = nil,
        tooltip_markup : String? = nil,
        tooltip_text : String? = nil,
        valign : Gtk::Align? = nil,
        vexpand : Bool? = nil,
        vexpand_set : Bool? = nil,
        visible : Bool? = nil,
        width_request : Int32? = nil,
        padding : Int32 = 0,
        fill : Bool = false,
        expand : Bool = false
      ) : Void
        @app_paintable = app_paintable
        @baseline_position = baseline_position
        @border_width = border_width
        @can_default = can_default
        @can_focus = can_focus
        @double_buffered = double_buffered
        @events = events
        @expand = expand
        @focus_on_click = focus_on_click
        @fill = fill
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
        @padding = padding
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

      def initialize(
        @children : Array(Component),
        app_paintable : Bool? = nil,
        baseline_position : Gtk::BaselinePosition? = nil,
        border_width : UInt32? = nil,
        can_default : Bool? = nil,
        can_focus : Bool? = nil,
        double_buffered : Bool? = nil,
        events : Gdk::EventMask? = nil,
        focus_on_click : Bool? = nil,
        halign : Gtk::Align? = nil,
        has_default : Bool? = nil,
        has_focus : Bool? = nil,
        has_tooltip : Bool? = nil,
        height_request : Int32? = nil,
        hexpand : Bool? = nil,
        hexpand_set : Bool? = nil,
        homogeneous : Bool? = nil,
        is_focus : Bool? = nil,
        margin : Int32? = nil,
        margin_bottom : Int32? = nil,
        margin_end : Int32? = nil,
        margin_left : Int32? = nil,
        margin_right : Int32? = nil,
        margin_start : Int32? = nil,
        margin_top : Int32? = nil,
        name : String? = nil,
        no_show_all : Bool? = nil,
        opacity : Float64? = nil,
        orientation : Gtk::Orientation? = nil,
        receives_default : Bool? = nil,
        resize_mode : Gtk::ResizeMode? = nil,
        sensitive : Bool? = nil,
        spacing : Int32? = nil,
        style : Gtk::Style? = nil,
        tooltip_markup : String? = nil,
        tooltip_text : String? = nil,
        valign : Gtk::Align? = nil,
        vexpand : Bool? = nil,
        vexpand_set : Bool? = nil,
        visible : Bool? = nil,
        width_request : Int32? = nil,
        padding : Int32 = 0,
        fill : Bool = false,
        expand : Bool = false
      ) : Void
        @app_paintable = app_paintable
        @baseline_position = baseline_position
        @border_width = border_width
        @can_default = can_default
        @can_focus = can_focus
        @double_buffered = double_buffered
        @events = events
        @expand = expand
        @focus_on_click = focus_on_click
        @fill = fill
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
        @padding = padding
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

      def render : Gtk::Widget
        box = Gtk::Box.new(
          app_paintable: @app_paintable,
          baseline_position: @baseline_position,
          border_width: @border_width,
          can_default: @can_default,
          can_focus: @can_focus,
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

        @child.try do |child|
          box.pack_start(child.render, expand: @expand, fill: @fill, padding: @padding)
        end

        @children.try do |children|
          children.each do |child|
            box.pack_start(child.render, expand: @expand, fill: @fill, padding: @padding)
          end
        end

        return box
      end
    end
  end
end
