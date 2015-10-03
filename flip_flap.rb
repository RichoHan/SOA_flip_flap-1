require_relative 'tsv_buddy'
require 'yaml'

class FlipFlap
  include TsvBuddy
  # Do NOT create an initialize method
  # take_yaml: takes a yaml string and create a data structure
  def take_yaml(yml)
    @data = YAML.load(yml)  
  end

  # to_yaml: return @data in Yaml format
  def to_yaml
    @data.to_yaml
  end

end
