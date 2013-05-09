require 'pry'

module ETL
  extend self

  def transform(old_hash)
    old_hash.each_with_object({}) do |(key, values), new_hash|
      values.each { |value| new_hash[value.downcase] = key }
    end
  end

end

# 2 level hash iteration