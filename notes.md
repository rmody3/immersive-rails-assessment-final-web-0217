 As a user, I should be able to edit an appearance so that I can change a rating. Build out the edit functionality for an appearance, keeping with RESTful conventions.

 - edit page




We want to add some more validations to our models - an appearance should only be valid if it has a rating on it that's between 1 and 5.


When we create a new appearance, we should also keep track of the producer who booked that appearance. This means that an appearance should also belong to a user. Update your schema, models, and forms to reflect this.


Other:

Add flash messages, for edit and update
create partial for edit and new DONE

add index and show page for appearances
add navigation
