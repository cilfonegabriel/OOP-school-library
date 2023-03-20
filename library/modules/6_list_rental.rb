module ListRental
    def list_rentals_per_person_id(id)
        person = @people.select { |psn| psn.id == id }
        return 'No person found' unless person.length.positive?
    
        person[0].view_rentals
    end

    def list_rentals_per_person_id(app)
        puts('Insert ID or -1 to return')
        id = gets.chomp.to_i
        return app.list_rentals_per_person_id(id) if id.positive?
    end
end