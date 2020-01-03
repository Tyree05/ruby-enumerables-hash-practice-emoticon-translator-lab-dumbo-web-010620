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
    end
    if !result[:get_meaning][jap].has_key?(m)
      result[:get_meaning][jap] = m
    end
    if !result[:get_emoticon].has_key?(eng)
      result[:get_emoticon][eng] = {}
    end
    if !result[:get_emoticon][eng].has_key?(jap)
      result[:get_emoticon][eng] = jap
    end
  }
  # binding.pry
  return result
end

def get_japanese_emoticon(file, emoji)
   jap_directory = load_library(file)
  #  eng_emo = 0
   jap_directory[:get_emoticon].each { |(e,j)|
     if jap_directory[:get_emoticon].has_key?(emoji)
       value = j
     end
    #  binding.pry
   }
 return eng_emo
end

def get_english_meaning
  # code goes here
end
