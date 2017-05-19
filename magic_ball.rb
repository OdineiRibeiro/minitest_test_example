class MagicBall
  ANSWERS = [
    'It is certain',
    'It is decidedly so',
    'Without a doubt',
    'Yes, definitely',
    'You may rely on it',
    'As I see it, yes',
    'Most likely',
    'Outlook good',
    'Yes',
    'Signs point to yes',
    'Reply hazy try again',
    'Ask again later',
    'Better not tell you now',
    'Cannot predict now',
    'Concentrate and ask again',
    'Dont count on it',
    'My reply is no',
    'My sources say no',
    'Outlook not so good',
    'Very doubtful'
  ].freeze

  def ask(question)
    raise 'Question has invalid format.' unless question_valid? question
    ANSWERS.sample
  end

  private

  def question_valid?(question)
    question.is_a?(String) && question[-1] == '?'
  end
end
