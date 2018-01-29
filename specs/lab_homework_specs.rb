require('minitest/autorun')
require('minitest/rg')
require_relative('../lab_homework')

# class StudentTest < MiniTest::Test
#
#   def test_student_name
#     student_details = Student.new("Danny", 4, "Ruby")
#     assert_equal("Danny", student_details.student_name())
#   end
#
#   def test_cohort_number
#     student_details = Student.new("Danny", 4, "Ruby")
#     assert_equal(4, student_details.cohort_number())
#   end
#
#   def test_set_student_name
#     student_details = Student.new("Danny", 4, "Ruby")
#     student_details.set_student_name("Daniel")
#     assert_equal("Daniel", student_details.student_name())
#   end
#
#   def test_set_cohort_number
#     student_details = Student.new("Danny", 4, "Ruby")
#     student_details.set_cohort_number(1)
#     assert_equal(1, student_details.cohort_number())
#   end
#
#   def test_talking_student
#     student_details = Student.new("Danny", 4, "Ruby")
#     student_details.talking_student()
#     assert_equal("I can talk",student_details.talking_student())
#   end
#
#   def test_students_favourite_langauage
#     student_details = Student.new("Danny", 4, "Ruby")
#     result = student_details.favourite_language()
#     assert_equal("I love Ruby", result)
#   end
# end

# class TestSportsTeam <MiniTest::Test
#
#
#   def test_team_name
#     team_details = SportsTeam.new("Saints", ["Brees", "Ingram", "Kamara"], "Payton", 0)
#     assert_equal("Saints", team_details.team_name())
#   end
#
#   def test_players
#     team_details = SportsTeam.new("Saints", ["Brees", "Ingram", "Kamara"], "Payton", 0)
#     assert_equal(["Brees", "Ingram", "Kamara"], team_details.players())
#   end
#
#   def test_coach_name
#     team_details = SportsTeam.new("Saints", ["Brees", "Ingram", "Kamara"], "Payton", 0)
#     assert_equal("Payton", team_details.coach_name())
#   end
#
#   def test_change_coach_name
#     team_details = SportsTeam.new("Saints", ["Brees", "Ingram", "Kamara"], "Payton", 0)
#     team_details.coach_name = ("Conner")
#     assert_equal("Conner", team_details.coach_name())
#   end
#
#   def test_add_player
#     team_details = SportsTeam.new("Saints", ["Brees", "Ingram", "Kamara"], "Payton", 0)
#     team_details.add_player("Jordan")
#     assert_equal(["Brees", "Ingram", "Kamara", "Jordan"], team_details.players())
#   end
#
#   def test_check_player
#     team_details = SportsTeam.new("Saints", ["Brees", "Ingram", "Kamara"], "Payton", 0 )
#     team_details.check_player("Brees")
#     assert_equal(true, team_details.check_player("Brees"))
#   end
#
#   def test_did_team_win
#     team_details = SportsTeam.new("Saints", ["Brees", "Ingram", "Kamara"], "Payton", 0 )
#     assert_equal(1, team_details.points_checker("win"))
#   end
#
#
# end



class LibraryTest < MiniTest::Test


  def test_library_has_books
    library = Library.new([])
    assert_equal([], library.books)
  end

  def test_get_info_for_title
    book ={
      title: "Lord of the rings",
      rental_details: {
        student_name: "Jeff",
        date: "29/01/2018"
      }
    }

    book2 = {
      title: "50 shades of grey",
      rental_details:{
        student_name: "Ed",
        date: "25/12/2018"
      }
    }
    library = Library.new([book, book2])
    book_info = library.get_info_for_title("Lord of the rings")
    assert_equal(book, book_info)
  end

  def test_get_rental_detail
    book ={
      title: "Lord of the rings",
      rental_details: {
        student_name: "Jeff",
        date: "29/01/2018"
      }
    }

    library = Library.new([book])
    book_info = library.get_rental_details("Lord of the rings")
    assert_equal(book[:rental_details], book_info)
  end

  def test_add_new_book_to_library
    book ={
      title: "Lord of the rings",
      rental_details: {
        student_name: "Jeff",
        date: "29/01/2018"
      }
    }

    library = Library.new([book])
    result = library.add_new_book("lord of the flies")
    assert_equal(2, result)
  end

  def test_updating_rental_details
    book ={
      title: "Lord of the rings",
      rental_details: {
        student_name: "Jeff",
        date: "29/01/2018"
      }
    }

    library = Library.new([book])
    #arrange


    #act
    #function that checks the book against title, student_name and date
    library.update_rental_details(:title, :student_name, :date)
    updated_book_info = library.get_rental_details("Lord of the rings")
    #assert
    # changes the rental details of the book
    assert_equal({student_name:"Daniel", date:"1/2/18"}, update_rental_details(:title, :student_name, :date))
  end

end
