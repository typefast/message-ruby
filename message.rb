class Message
  attr_writer :create_message
  attr_reader :show_messages
  
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
    puts ".:MESSAGE CREATED:.\n\n"
  end
  
  def show_messages
    puts "List of Messages"
    puts "-" * 10
    @messages.each do |title, content|
      puts "#{title} :: #{content[0]}"
      puts "Created at: #{content[1]}\n\n"
    end
  end
end

mail = Message.new
mail.create_message
mail.create_message
mail.show_messages

