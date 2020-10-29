module V6
  module Dsl
    # `Macros` alter the AST.
    module Macros
      macro property?(*names)
        {% for name in names %}
          {% if name.is_a?(TypeDeclaration) %}
            @{{name}}
    
            def {{name.var.id}}
              @{{name.var.id}}
            end
    
            def {{name.var.id}}(@{{name.var.id}} : {{name.type}}) : Component
              self
            end
          {% elsif name.is_a?(Assign) %}
            @{{name}}
    
            def {{name.target.id}}
              @{{name.target.id}}
            end
    
            def {{name.target.id}}(@{{name.target.id}})
              self
            end
          {% else %}
            def {{name.id}}
              @{{name.id}}
            end
    
            def {{name.id}}=(@{{name.id}})
            end
          {% end %}
        {% end %}
      end

      macro delegate?(*methods, to object, as override)
        {% for method in methods %}
          def {{override.id}}(*args, **options)
            {{object.id}}.{{override.id}}(*args, **options)
          end
    
          def {{override.id}}(*args, **options)
            {{object.id}}.{{override.id}}(*args, **options) do |*yield_args|
              yield *yield_args
            end
          end
        {% end %}
      end
    end
  end
end
