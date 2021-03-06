require "../src/v6"

class Application < V6::Application
  def title : String
    "V6 Demonstration application"
  end

  def width : Int32
    0
  end

  def height : Int32
    0
  end

  def render : Component
    Box.new(
      child: Box
        .new(
          child: Box
            .new(
              child: Box
                .new(
                  children: [
                    Label.new(str: "Hello, World!"),
                    Image.new(
                      file: "#{__DIR__}/images/example.png"
                    ),
                  ] of Component,
                )
            )
        )
    )
  end
end

app = Application.new
app.run
