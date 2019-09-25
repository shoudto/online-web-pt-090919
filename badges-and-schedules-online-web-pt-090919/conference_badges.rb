# The commented out code represents alternative approaches to getting the tests to pass.
# There are many ways to solve a problem!
# Paste this code into your lab and play around with 
#   commenting out different code blocks if you don't believe :)

def badge_maker(name)
    "Hello, my name is #{name}."
    # "Hello, my name is" + name + "."
end

def batch_badge_creator(attendees)

    new_array = []
    attendees.each do |name|
        new_array.push(badge_maker(name))
    end
    new_array

    # attendees.map do |name|
    #     badge_maker(name)
    # end

end

def assign_rooms(attendees)

    # new_array = []
    # attendees.each do |name|
    #     new_array.push("Hello, #{name}! You'll be assigned to room #{attendees.find_index(name) + 1}!")
    # end
    # new_array

    attendees.each_with_index.collect {|name,index| "Hello, #{name}! You'll be assigned to room #{index+1}!"}
end

def printer(attendees)

    # new_array = batch_badge_creator(attendees).concat(assign_rooms(attendees))
    # new_array.each do |x|
    #     puts x
    # end

    # batch_badge_creator(attendees).each do |x|
    #     puts x
    # end
    # assign_rooms(attendees).each do |x|
    #     puts x
    # end

    new_array = batch_badge_creator(attendees).each { |x| puts x }
    assign_rooms(attendees).each { |x| puts x }
end