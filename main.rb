module Until
  def show_info
    puts "name is => #{name}"
    puts "seri is => #{seri}"
  end

  def print_info(my_file)
    # import url file
    url_file = File.new(my_file, "w+")
    url_file.close

    # write file
    open_url = File.open(url_file,"w+")
    open_url.puts "Name is => #{name}"
    open_url.puts "seri is => #{seri}"
    open_url.close
  end

  def print_message(massage,url)
    print_mes = File.open(url,"a+")
    print_mes.puts("Massage => #{massage}")
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

my_fax_machine = FaxMachine.new("Tosiba", "123123")
my_fax_machine.show_info
my_fax_machine.print_info('test4.txt')
my_fax_machine.print_message("Good!!!",'test4.txt')
