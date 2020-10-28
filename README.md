# V6

GUI development library for Crystal lang.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     v6:
       github: grkek/v6
   ```

2. Run `shards install`

## Usage

```crystal
require "v6"

class Application < V6::Application
  def render : Component
    Box.new
  end
end

app = Application.new
app.run
```
