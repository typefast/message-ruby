class Message
  attr_writer :create_message
  
  def initialize
    @messages = {}
  end
  
  def create_message
    time = Time.now
    puts "Creating a message."
    puts "Enter a title."
    title = gets.chomp
    puts "Enter a message"
    content = gets.chomp
    message = [content, time]
    @messages[title] = message 
    puts ".:MESSAGE CREATED:."
  end
  
  def show_messages
    puts "MESSAGES"
    
  end
end

mail = Message.new
mail.create_message


