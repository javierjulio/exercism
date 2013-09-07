class Bob

  def hey(message)
    message = String(message)
    return 'Fine. Be that way!' if silence?(message)
    return 'Woah, chill out!' if shouting?(message)
    return 'Sure.' if question?(message)
    'Whatever.'
  end

  protected

    def shouting?(message)
      message.upcase == message
    end

    def silence?(message)
      message.strip == ''
    end

    def question?(message)
      message.end_with?('?')
    end

end
