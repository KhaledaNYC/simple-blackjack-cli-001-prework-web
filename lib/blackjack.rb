def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  return user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(total)
    prompt_user
    input = get_user_input
  if input == "s"
    return total
  elsif input == "h"
    return deal_card + total
  end
end

def invalid_command(input)
  if input != "s" || input != "h"
    puts "Please enter a valid command"
  end
    prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
until sum > 21
  sum = hit?(sum)
  display_card_total(sum)
end
  end_game(sum)
end
