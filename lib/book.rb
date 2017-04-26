require_relative 'item.rb'

class Book < Item

  attr_accessor :pages, :author
  def initialize(name, price, pages, author)
    @pages = pages
    @author = author
    super(name, price, quantity, description)
  end

end
