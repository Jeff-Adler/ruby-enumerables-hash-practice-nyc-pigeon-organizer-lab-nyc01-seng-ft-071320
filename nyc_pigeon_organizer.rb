require 'pry'

def nyc_pigeon_organizer(data)
  organized_hash = {}
  data.each do |category,values|
    values.each do |value,names|
      names.each do |name|
        if !organized_hash.include?(name)
          organized_hash[name] = {}
        end
      end
    end
  end
  binding.pry 
end

#for each element in the top-level, if there is another layer of nesting, call that layer of nesting.
#Otherwise, turn that string into a category
