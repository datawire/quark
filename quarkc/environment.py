class Environment(object):

    """Environment of case-insensitive, case-preserving symbols.

    Environment :
      * Forbids (raises `NameCollisionError`) insertion of:
        * Duplicate keys, and
        * Keys that differ by case only (ASCII assumed)
      * Maintains O(1) lookup/insertion.

    """

    class NameCollisionError(Exception):
        pass

    def __init__(self):
        self._mapping = {}
        self._identity_map = {}

    def colliding_key(self, key):
        identity = hash(key.lower())
        colliding_key = self._identity_map.get(identity, None)
        return colliding_key

    def __setitem__(self, key, value):
        identity = hash(key.lower())
        if identity in self._identity_map:
            raise self.NameCollisionError(key)
        self._mapping[key] = value
        self._identity_map[identity] = key

    def __getitem__(self, key):
        return self._mapping[key]

    def __contains__(self, key):
        return self._mapping.__contains__(key)

    def __iter__(self):
        return self._mapping.__iter__()
