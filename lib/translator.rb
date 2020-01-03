# require modules here
require 'yaml'
require 'pry'

def load_library(file)
  direct_file = YAML.load_file(file)
  result = {}
  result[:get_emoticon] = {}
  result[:get_meaning] = {}
  direct_file.map { |m, (eng, jap)|
    # binding.pry
    if !result[:get_meaning].has_key?(jap)
      result[:get_meaning][jap] = {}
    # if !result[:get_meaning].include?(jap)
    end
  }
  return result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
