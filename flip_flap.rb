require_relative 'tsv_buddy'
require_relative 'yaml_buddy'
require 'yaml'

# Class for tranform data to yaml or tsv format
class FlipFlap
  include TsvBuddy
  include YamlBuddy
end
