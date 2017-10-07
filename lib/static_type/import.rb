self.instance_eval do
  def int(variable_name = nil)
    raise SyntaxError.new('Need to define name!') if variable_name.nil?
    self.instance_variable_set("@#{variable_name}".to_sym, IntVariable.new)
    nil
  end
end
