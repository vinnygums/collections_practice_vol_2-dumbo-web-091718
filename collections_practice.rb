# your code goes here
def begins_with_r(collection)
   collection.all? do |word|
     word.start_with?("r")
   end
end

def contain_a(collection)
  collection.select do |word|
    word.include? "a"
  end
end

def first_wa(collection)
  strings = []
  collection.each do |item|
    if item.class == String
      strings << item
    end
  end
  strings.find do |word|
    word.start_with?("wa")
  end
end

def remove_non_strings(collection)
  collection.delete_if do |item|
    item.class != String
  end
end

def count_elements(collection)
  new_collection = []
  ashley_counter = 0
  blake_counter = 0
  collection.each do |name|
    if name[:name] == "blake"
      blake_counter += 1
      if new_collection.size == 0
        new_collection << {:count => blake_counter}
      end
      new_collection[0][:name] = "blake"
      new_collection[0][:count] = blake_counter
      elsif name[:name] == "ashley"
        ashley_counter += 1
        new_collection << {:count => ashley_counter}
        new_collection[1][:name] = "ashley"
    end
  end
  new_collection
end

def merge_data(keys, data)
  empty_array = []
  keys.each do |name|
    person_name = name[:first_name]
    data.each do |hash|
      if hash[person_name]
         merged_person = hash[person_name]
         merged_person[:first_name] = person_name
         empty_array << merged_person
      end
    end
  end
  empty_array
end
#let(:merged_data) {
    #[
           #{
             #:first_name => "blake",
            #:awesomeness => 10,
                 #:height => "74",
              #:last_name => "johnson"
        #},
           #{
             #:first_name => "ashley",
            #:awesomeness => 9,
                 #:height => 60,
              #:last_name => "dubs"
        #}
    #]
  #}

def find_cool(word)
  empty_array = []
  empty_array << {}
  word.each do |info|
    if info[:temperature] == "cool"
      
      empty_array[0] = info
     end
   end
   empty_array
end

def organize_schools(schools)
  empty_hash = {}
  schools.each do |school, location|
    location.each do |location1, state|
      if empty_hash[state] == nil
      empty_hash[state] = []
      end
      empty_hash[state] << school
    end
  end
  empty_hash
end
  
