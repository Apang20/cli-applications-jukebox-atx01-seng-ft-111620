require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end	

def list(my_songs)
  my_songs.each { |song, location|
    puts song
    }
	end
	
	def play(my_songs)
	puts "Please enter a song name:"
  user_response = gets.chomp
  my_songs.each { |song, location|
    if user_response == song
      system 'open ' + location
    end
      }
  if user_response == "list"
    list(my_songs)
    play(my_songs)
  else
    puts "Invalid input, please try again:"
    play(my_songs)
  end
end


def exit_jukebox	
 puts "Goodbye"
end	

def run(my_songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  while user_response != "exit"
    case user_response
      when "help"
        help
        puts "Please enter a command:"
        user_response = gets.chomp
      when "list"
        list(my_songs)
        puts "Please enter a command:"
        user_response = gets.chomp
      when "play"
        play(my_songs)
        puts "Please enter a command:"
        user_response = gets.chomp
      when "exit"
        exit_jukebox
      else
        puts "Invalid input, please try again:"
        user_response = gets.chomp
      end
    end
end 

# def help
#   #puts "Please enter a command:"
#   puts "I accept the following commands:"
#   puts "- help : displays this help message"
#   puts "- list : displays a list of songs you can play"
#   puts "- play : lets you choose a song to play"
#   puts "- exit : exits this program"
# end

# def list(songs)
#   songs.each_with_index{|song, index| puts "#{index + 1}. #{song}"}
# end


# def play(songs)
#   puts "Please enter a song name or number:"
#   choice = gets.chomp
#   valid = false
#   songs.each_with_index do |song, index|
#     #binding.pry
#     if (choice.to_i - 1 == index)
#       puts "Playing #{songs[index]}"
#       valid = true
#     elsif (choice == song)
#       puts "Playing #{choice}"
#       valid = true
#     end
#   end
#   puts "Invalid input, please try again" if valid == false
# end


# def exit_jukebox
#   puts "Goodbye"
# end

# def run(songs)
#   help
#   loop do
#     puts "Please enter a command:"
#     input = gets.chomp
#     case input
#     when 'play'
#       play(songs)
#     when 'help'
#       help
#     when 'list'
#       list(songs)
#     when 'exit'
#       #exit_jukebox
#       break
#     end
#   end
#   exit_jukebox
# end