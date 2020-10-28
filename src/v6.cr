require "./**"

# `V6` contains modules which can be used to build responsive UI applications.
module V6; end

class Application < V6::Application
  def render : Component
    Box.new
  end
end

app = Application.new
app.run
