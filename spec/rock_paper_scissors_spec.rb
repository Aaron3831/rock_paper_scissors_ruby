require('rspec')
require('rock_paper_scissors')

describe('String#rock_paper_scissors') do
  it('returns the result of the round') do
    expect('rock'.rock_paper_scissors()).to(eq('Player 1 loses'))
  end

  it('returns the result of the round') do
    expect('paper'.rock_paper_scissors()).to(eq('Draw!'))
  end
end
