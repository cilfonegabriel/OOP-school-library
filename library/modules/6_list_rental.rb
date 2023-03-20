module ListRental
  def list_rentals_per_person_id(id)
    person = @people.select { |psn| psn.id == id }
    return 'No person found' unless person.length.positive?

    person[0].view_rentals
  end
end
