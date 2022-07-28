#clear out existing data
Audition.destroy_all
Role.destroy_all

#create roles
lucy = Role.create(character_name: "Lucy")
ethel = Role.create(character_name: "Ethel")
fred = Role.create(character_name: "Fred")
desi = Role.create(character_name: "Desi")

#create auditions
Audition.create(
    actor: "Angela",
    location: "Beacon",
    phone: 123456789,
    hired: true,
    role_id: lucy.id
)

Audition.create(
    actor: "Danny",
    location: "Fishkill",
    phone: 123456789,
    hired: false,
    role_id: lucy.id
)

Audition.create(
    actor: "Kerry",
    location: "Cold Spring",
    phone: 123456789,
    hired: false,
    role_id: ethel.id
)

Audition.create(
    actor: "Kelly",
    location: "Garrison",
    phone: 123456789,
    hired: true,
    role_id: ethel.id
)

Audition.create(
    actor: "Pete",
    location: "Beacon",
    phone: 123456789,
    hired: false,
    role_id: fred.id
)

Audition.create(
    actor: "Jesse",
    location: "Albany",
    phone: 123456789,
    hired: false,
    role_id: desi.id
)

Audition.create(
    actor: "Michael",
    location: "Beacon",
    phone: 123456789,
    hired: false,
    role_id: desi.id
)


