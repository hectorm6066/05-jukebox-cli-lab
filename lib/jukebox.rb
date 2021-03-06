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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end
def list(songs)
  songs.each_with_index do |song,i|
    puts "#{i+1}. #{song}"
  end
end
def play(songs)
  puts "Please enter a song name or number:"
  user = gets.chomp
  # if songs.include? user_input
  #   puts "Playing #{user_input}"
  # end
  if list(songs).include? user
    puts "Playing #{user}"
  else
    puts "Invalid input, please try again"
  end
  
end
def exit_jukebox
  puts "Goodbye"
end
def run(songs)
  puts help
  loop do
  puts "Please enter a command:"
  user_input=gets.chomp
  if user_input =="list"
    puts list
  end
  if user_input =="play"
    puts play
  end
  if user_input =="help"
    puts help
  end
  if user_input == "exit"
    puts exit_jukebox
  break
  end
end
end