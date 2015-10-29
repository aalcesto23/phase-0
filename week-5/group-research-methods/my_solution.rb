# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# Person 2
# pseudo code:
# - the method accepts two arguments, the array and the number you are modifying the array with
# - map to the element within the array that is an integer
# - add the amount modifying number to the integer

def my_array_modification_method!(i_want_pets, thing_to_modify)
  i_want_pets.map! {|element| element.is_a?(Integer)? (element + thing_to_modify) : element}
end


# pseudo code:
# - accepts two arguments, a hash and number of additional years
# - iterates through the keys and values within the hash
# - add the additional years to the values of the hash

def my_hash_modification_method!(my_family_pets_ages, thing_to_modify)
  my_family_pets_ages.each do |key, value|
    my_family_pets_ages[key] = value + thing_to_modify
  end
end

# Identify and describe the Ruby method(s) you implemented.
=begin
  
Array Method:
- For the array method I used a .map! to invoke the given block once for each element . I used .is_a? to map it to an integer. From there you can add the modifier to the integer.

Hash Method:
- I used .each to iterate through the keys and values of the hash, then I added the modifier to the existing values.  
+end


