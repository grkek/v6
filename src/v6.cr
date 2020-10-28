require "./**"

# `V6` contains modules which can be used to build responsive UI applications.
module V6; end

class Application < V6::Application
  def render : Component
    Box.new(
      child: Box.new(
        child: Box.new(
          child: Box.new(
            children: [
              Label.new(text: "Hello, World!"),
            ] of Component,
            orientation: Gtk::Orientation::HORIZONTAL,
            padding: 20,
            fill: true
          ),
          padding: 50
        )
      )
    )
  end
end

app = Application.new
app.run
