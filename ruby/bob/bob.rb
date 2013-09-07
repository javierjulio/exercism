class Bob

  def hey(message)
    result = nil
    if silence?(message)
      result = 'Fine. Be that way!'
    end
    if statement?(message)
      result = 'Whatever.'
    end
    if asking_question?(message)
      result = 'Sure.'
    end
    if shouting?(message)
      result = 'Woah, chill out!'
    end
    result
  end

  protected

    def asking_question?(message)
      # TODO: check for multiple sentences (! ), (. ), etc.
      message && message.end_with?('?') #&& message.match(/^(! ){1,}(. ){1,}+\?$/)
    end

    def statement?(message)
      message && message.gsub(' ', '').match(/^[a-zA-Z',!\?\-\.]+$/) && message.end_with?('!', '.')
    end

    def shouting?(message)
      message && message.gsub(' ', '').match(/^[0-9A-Z',%!#@\*\(\$\^\?\-\.]+(\??|!?)$/)
    end

    def silence?(message)
      message && message.strip == ''
    end

end
