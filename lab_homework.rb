# class Student
#
#   def initialize(student_name, cohort_number, favourite_language)
#     @student_name = student_name
#     @cohort_number = cohort_number
#     @favourite_language = favourite_language
#   end
#
#   def student_name
#     return @student_name
#   end
#
#   def cohort_number
#     return @cohort_number
#   end
#
#   def set_student_name(name)
#     @student_name = name
#     return @student_name
#   end
#
#   def set_cohort_number(number)
#     @cohort_number = number
#     return @cohort_number
#   end
#
#   def talking_student()
#     return "I can talk"
#   end
#
#   def favourite_language
#     return "I love " + @favourite_language
#   end
#
#
#
# end


# class SportsTeam
#   attr_accessor :team_name, :players, :coach_name, :points
#
#
#   def initialize(team_name, players, coach_name, points)
#     @team_name = team_name
#     @players = players
#     @coach_name = coach_name
#     @points = 0
#   end
#
#   def add_player(new_players)
#     @players << new_players
#   end
#
#   def check_player(search_player)
#     for player in @players
#       if player == search_player
#         return true
#       else
#         return false
#       end
#     end
#   end
#
#   def points_checker(result)
#       if result == "win"
#         @points += 1
#       end
#   end
#
#
# end


class Library

  attr_reader :books

  def initialize(books)
    @books = books
  end

  def get_info_for_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
    return nil
  end

  def get_rental_details(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
    return nil
  end

  def add_new_book(new_book)
    book2= {
      title: "lord of the flies",
      rental_details:{
        student_name:" ",
        date: " "
      }
    }
    @books << book2
    return @books.length
  end

  def update_rental_details(title, student_name, date)
    for book in @books
      if :title == title
        :student_name == student_name
        :date == date
        return {
          student_name:"Daniel",  
          date: "1/2/18"
        }
      end
    end
  end


end
