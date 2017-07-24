class TelegramResponder
  class Url
    attr_reader :message

    def initialize(message)
      @message = message
    end

    def respond!
      MessageBuilder::NewTiemur.new(original_message, message).build
    end
  end
end
