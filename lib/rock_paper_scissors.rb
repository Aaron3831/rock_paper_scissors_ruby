class String
  define_method(:rock_paper_scissors) do
    plays = Hash.new()
    plays.store(['rock','paper'], 'loses')
    plays.store(['rock','scissors'], 'wins')
    plays.store(['paper','scissors'], 'loses')
    plays.store(['paper','rock'], 'wins')
    plays.store(['scissors','rock'], 'loses')
    plays.store(['scissors','paper'], 'wins')

    random_number = 1 + rand(3)

    if random_number == 1
      player2 = 'rock'
    elsif random_number == 2
      player2 = 'paper'
    elsif random_number == 3
      player2 = 'scissors'
    end

    current_play = [self,player2]
    if self == player2
      return 'Draw!'
    else
      return 'Player 1 '.concat(plays[current_play])
    end
  end
end
