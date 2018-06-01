module StaticType
  def var(definitions)
    definitions.each do |variable_name, variable_type|
      define_method(variable_name) do
        self.instance_variable_get('@' + variable_name.to_s)
      end
      define_method(variable_name.to_s + '=') do |value|
        if variable_type == :int
          raise if value.class <= Integer
          self.instance_variable_set('@' + variable_name.to_s, value)
        end
      end
    end
  end
end
