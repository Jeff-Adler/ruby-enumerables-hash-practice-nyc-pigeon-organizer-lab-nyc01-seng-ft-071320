require 'pry'

def nyc_pigeon_organizer(data)

  #this block of code returns an organized_hash of all the pigeon names as keys
  #pointing to empty Color, Gender, and Lives array
  organized_hash = {}
  data.each do |category,values|
    values.each do |value,names|
      names.each do |name|
        if !organized_hash.include?(name)
          organized_hash[name] = {:color => [],
                                  :gender => [],
                                  :lives =>[] }
        end
      end
    end
  end

end

#for each element in the top-level, if there is another layer of nesting, call that layer of nesting.
#Otherwise, turn that string into a category
