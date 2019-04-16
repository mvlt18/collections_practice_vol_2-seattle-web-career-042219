require "pry"

def begins_with_r(array)
  array.all? {|letter| letter.start_with?('r') }
end

def contain_a(array)
  a_words = []
  array.each do |word|
    if (word.include?"a")
      a_words.push(word)
    end
  end
  a_words
end

def first_wa(array)
  array.each do |word|
    if word[0..1] == "wa"
      return word
    end
  end
end

def remove_non_strings(array)
  array.grep(String)
end

def count_elements(array)
  array.map do |name|
    {
      :name => name.values.join, :count => array.count(name)
    }
  end.uniq
end

def merge_data(keys, data)
  data.each do |group|
    group.each do |name, data|
      keys.each do |info|
        if info[:first_name] == name
          data.each do |key, value|
            info[key] = value
          end
        end
      end
    end
  end
  keys
end

def find_cool(array)
  cool = []
  array.each do |item|
    item.each do |key, value|
       if key == :temperature && value == "cool"
        cool.push(item)
       end
     end
   end
   cool
end

def organize_schools(hash)
  new_hash = {}
  hash.each do |school, info|
    info.each do |key, location|
      new_hash[location] = []
    end
  end
  hash.each do |school, info|
    info.each do |key, location|
      new_hash[location] << school
    end
  end
  new_hash
end
