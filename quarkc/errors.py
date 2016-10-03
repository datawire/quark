from collections import namedtuple


class DuplicateDefinition(namedtuple('DuplicateDefinition',
                                     ('location', 'id', 'previous_location'))):

    template = ("{location}: duplicate definition of {id} "
                "(first definition {previous_location})")

    def __str__(self):
        return self.template.format(
            location=self.location,
            id=self.id,
            previous_location=self.previous_location,
        )


class NameCollision(namedtuple('NameCollision',
                               ('id', 'location', 'id2', 'location2'))):

    template = ("{location}: `{id}` may collide with `{id2}` ({location2}) "
                "for target languages that are case-insensitive, "
                "thus it is forbidden")

    def __str__(self):
        return self.template.format(
            id=self.id,
            location=self.location,
            id2=self.id2,
            location2=self.location2,
        )
