module Until
  def show_info
    puts "name is => #{name}"
    puts "seri is => #{seri}"
  end

  def print_info(my_file)
    # import url file
    url_file = File.new(my_file, "w+")
    # write file
    url_file.puts "Name is => #{name}"
    url_file.puts "seri is => #{seri}"
    open_url.close
  end

  def print_msg(message,url)
    print_mes = File.open(url,"a+")
    print_mes.puts("Massage => #{message}")
    print_mes.close
  end
end

class FaxMachine
  include Until
  attr_accessor :name, :seri

  def initialize(name, seri)
    @name = name
    @seri = seri 
  end

end

my_fax_machine = FaxMachine.new("Samsung", "111123")
my_fax_machine.show_info
my_fax_machine.print_info('test4.txt')
my_fax_machine.print_msg("Good!!!",'test4.txt')
