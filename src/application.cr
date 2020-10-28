require "gobject/gtk"
require "tasker"
require "./ui/**"

module V6
  # `Application` contains the bootstrapping mechanism.
  abstract class Application
    include Ui

    property native : Gtk::Application

    def initialize
      @native = Gtk::Application.new(application_id: "com.grkek.v6")
    end

    def initialize(application_id : String)
      @native = Gtk::Application.new(application_id: application_id)
    end

    abstract def render : Component

    def accept_focus : Bool | Nil
      nil
    end

    def app_paintable : Bool | Nil
      nil
    end

    def attached_to : Gtk::Widget | Nil
      nil
    end

    def border_width : UInt32 | Nil
      30_u32
    end

    def can_default : Bool | Nil
      nil
    end

    def can_focus : Bool | Nil
      nil
    end

    def decorated : Bool | Nil
      nil
    end

    def default_height : Int32
      600
    end

    def default_width : Int32
      800
    end

    def deletable : Bool | Nil
      nil
    end

    def destroy_with_parent : Bool | Nil
      nil
    end

    def double_buffered : Bool | Nil
      nil
    end

    def events : Gdk::EventMask | Nil
      nil
    end

    def expand : Bool | Nil
      nil
    end

    def focus_on_click : Bool | Nil
      nil
    end

    def focus_on_map : Bool | Nil
      nil
    end

    def focus_visible : Bool | Nil
      nil
    end

    def gravity : Gdk::Gravity | Nil
      nil
    end

    def halign : Gtk::Align | Nil
      nil
    end

    def has_default : Bool | Nil
      nil
    end

    def has_focus : Bool | Nil
      nil
    end

    def has_resize_grip : Bool | Nil
      nil
    end

    def has_tooltip : Bool | Nil
      nil
    end

    def height_request : Int32 | Nil
      nil
    end

    def hexpand : Bool | Nil
      nil
    end

    def hexpand_set : Bool | Nil
      nil
    end

    def hide_titlebar_when_maximized : Bool | Nil
      nil
    end

    def icon : GdkPixbuf::Pixbuf | Nil
      nil
    end

    def icon_name : String | Nil
      nil
    end

    def is_focus : Bool | Nil
      nil
    end

    def margin : Int32 | Nil
      nil
    end

    def margin_bottom : Int32 | Nil
      nil
    end

    def margin_end : Int32 | Nil
      nil
    end

    def margin_left : Int32 | Nil
      nil
    end

    def margin_right : Int32 | Nil
      nil
    end

    def margin_start : Int32 | Nil
      nil
    end

    def margin_top : Int32 | Nil
      nil
    end

    def mnemonics_visible : Bool | Nil
      nil
    end

    def modal : Bool | Nil
      nil
    end

    def name : String | Nil
      nil
    end

    def no_show_all : Bool | Nil
      nil
    end

    def opacity : Float64 | Nil
      nil
    end

    def parent : Gtk::Container | Nil
      nil
    end

    def receives_default : Bool | Nil
      nil
    end

    def resizable : Bool | Nil
      nil
    end

    def resize_mode : Gtk::ResizeMode | Nil
      nil
    end

    def role : String | Nil
      nil
    end

    def screen : Gdk::Screen | Nil
      nil
    end

    def sensitive : Bool | Nil
      nil
    end

    def show_menubar : Bool | Nil
      nil
    end

    def skip_pager_hint : Bool | Nil
      nil
    end

    def skip_taskbar_hint : Bool | Nil
      nil
    end

    def startup_id : String | Nil
      nil
    end

    def style : Gtk::Style | Nil
      nil
    end

    def title : String | Nil
      "Untitled"
    end

    def tooltip_markup : String | Nil
      nil
    end

    def tooltip_text : String | Nil
      nil
    end

    def transient_for : Gtk::Window | Nil
      nil
    end

    def type : Gtk::WindowType | Nil
      nil
    end

    def type_hint : Gdk::WindowTypeHint | Nil
      nil
    end

    def urgency_hint : Bool | Nil
      nil
    end

    def valign : Gtk::Align | Nil
      nil
    end

    def vexpand : Bool | Nil
      nil
    end

    def vexpand_set : Bool | Nil
      nil
    end

    def visible : Bool | Nil
      nil
    end

    def width_request : Int32 | Nil
      nil
    end

    def window_position : Gtk::WindowPosition | Nil
      nil
    end

    def window : Gtk::ApplicationWindow
      Gtk::ApplicationWindow.new(
        application: @native,
        accept_focus: accept_focus,
        app_paintable: app_paintable,
        attached_to: attached_to,
        border_width: border_width,
        can_default: can_default,
        can_focus: can_focus,
        decorated: decorated,
        default_height: default_height,
        default_width: default_width,
        deletable: deletable,
        destroy_with_parent: destroy_with_parent,
        double_buffered: double_buffered,
        events: events,
        expand: expand,
        focus_on_click: focus_on_click,
        focus_on_map: focus_on_map,
        focus_visible: focus_visible,
        gravity: gravity,
        has_focus: has_focus,
        has_default: has_default,
        halign: halign,
        has_tooltip: has_tooltip,
        has_resize_grip: has_resize_grip,
        height_request: height_request,
        hexpand: hexpand,
        hexpand_set: hexpand_set,
        hide_titlebar_when_maximized: hide_titlebar_when_maximized,
        icon: icon,
        icon_name: icon_name,
        is_focus: is_focus,
        margin: margin,
        margin_right: margin_right,
        margin_left: margin_left,
        margin_bottom: margin_bottom,
        margin_end: margin_end,
        margin_start: margin_start,
        margin_top: margin_top,
        mnemonics_visible: mnemonics_visible,
        modal: modal,
        name: name,
        no_show_all: no_show_all,
        opacity: opacity,
        parent: parent,
        receives_default: receives_default,
        resizable: resizable,
        resize_mode: resize_mode,
        role: role,
        screen: screen,
        sensitive: sensitive,
        show_menubar: show_menubar,
        skip_pager_hint: skip_pager_hint,
        skip_taskbar_hint: skip_taskbar_hint,
        startup_id: startup_id,
        style: style,
        title: title,
        tooltip_markup: tooltip_markup,
        tooltip_text: tooltip_text,
        transient_for: transient_for,
        type: type,
        type_hint: type_hint,
        urgency_hint: urgency_hint,
        valign: valign,
        vexpand: vexpand,
        vexpand_set: vexpand_set,
        visible: visible,
        width_request: width_request,
        window_position: window_position
      )
    end

    def run : Void
      @native.on_activate do
        component =
          render()

        window = window()
        window.connect("destroy", &->@native.quit)
        window.add(component.try(&.render))
        window.show_all
      end

      @native.run
    end
  end
end
