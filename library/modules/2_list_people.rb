module ListPeople
  def list_people
    puts '  No people found. Add someone to the library' unless @people.length.positive?

    @people.each { |person| puts("  [#{person.class}] ID: #{person.id} Name: #{person.name} Age: #{person.age}") }
  end
end
