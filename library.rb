class Library

  attr_accessor :books

  def initialize

      @books = [
        {
          title: "lord_of_the_rings",
          rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
          }
        },
        {
          title: "rendezvous_with_rama",
          rental_details: {
          student_name: "Billy",
          date: "02/12/16"
          }
        },
        {
          title: "do_androids_dream_of_electric_sheep",
          rental_details: {
          student_name: "John",
          date: "03/12/16"
          }
        },

        ]

  end



  def get_book_from_title(title)

    for book in @books

      if book[:title] == title
        return book
      end

    end

    return nil
  end

  def get_rental_information(title)
    return get_book_from_title(title)[:rental_details]
  end

  def add_book(name)
    @books.push({
        title: name,
        rental_details: {
        student_name: "",
        date: ""
        }
      })
  end

  def add_rental_details(title, name, date)
    book = get_book_from_title(title)
    book[:rental_details][:student_name] = name
    book[:rental_details][:date] = date
  end

end
