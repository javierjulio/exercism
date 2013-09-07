class Bob

  def hey(message)
    return 'Fine. Be that way!' if silence?(message)
    return 'Woah, chill out!' if shouting?(message)
    return 'Sure.' if question?(message)
    'Whatever.'
  end

  protected

    def question?(message)
      message && message.end_with?('?')
    end

    def shouting?(message)
      message && message.gsub(' ', '').match(/^[0-9A-Z',%!#@\*\(\$\^\?\-\.]+(\??|!?)$/)
    end

    def silence?(message)
      message && message.strip == ''
    end

end
