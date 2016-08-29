class Xmas
    DAYS = ['first', 'second', 'third', 'fourth', 'fifth', 'sixth', 'seventh', 'eighth', 'ninth', 'tenth', 'eleventh', 'twelfth']

    GIFT_LIST = [
        "twelve drummers drumming",
        "eleven pipers piping",
        "ten lords-a-leaping",
        "nine ladies dancing",
        "eight maids-a-milking",
        "seven swans-a-swimming",
        "six geese-a-laying",
        "FIVE GOLDEN RINGS",
        "four calling birds",
        "three french hens",
        "two turtle doves",
        "a partridge in a pear tree"
    ]

    def self.gifts(num)
        gift_array = []
        len = DAYS.length
        i = num + 1
        while i >= 1
            if i == 1 && num > 0
                last_line = "and " + GIFT_LIST[len-i]
                gift_array << last_line
            else
                gift_array << GIFT_LIST[len-i]
            end
            i -= 1
        end
        return gift_array
    end

    def self.verse(num)
        gift_day = DAYS[num]
        first_part = "On the #{gift_day} day of Christmas my true love gave to me"
        second_part = self.gifts(num).join("\n")
        verse = first_part.to_s + "\n" + second_part.to_s
        return verse
    end

    def self.sing
        whole_song = []
        (0...DAYS.length).each do |i|
            one_line = self.verse(i)
            whole_song << one_line
        end
        return whole_song.join("\n\n")
    end

end

# puts Xmas.gifts(3)
# puts Xmas.verse(3)

# puts Xmas.sing
