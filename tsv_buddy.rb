# Module that can be included (mixin) to create and parse TSV data
module TsvBuddy
  # @data should be a data structure that stores information
  #  from TSV or Yaml files. For example, it could be an Array of Hashes.
  attr_accessor :data

  # take_tsv: converts a String with TSV data into @data
  # parameter: tsv - a String in TSV format
  def take_tsv(tsv)
    lines = tsv.split("\n")
    keys = lines[0].split("\t")
    @data = []
    lines[1..-1].each do |line|
        hash = {}
        line.split("\t").each.with_index{ |d, i| hash[keys[i]] = d } 
      @data << hash
    end
    @data
  end

  # to_tsv: converts @data into tsv string
  # returns: String in TSV format
  def to_tsv
    content = @data.map { |student| student.values.join("\t") }.join("\n")
    @data[0].keys.join("\t") + "\n" + content + "\n"
  end
end
