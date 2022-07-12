from pyArango.connection import *

class DefaultArangoDatabaseInit(object):
    def __init__(self) -> None:
        self.connection = Connection(username="root", password="rootpassword")
        self.database = self.connection["_system"]

    def create_collection(self):
        try:
            self.database.createCollection(name="inserts")
        except:
            pass

arango=DefaultArangoDatabaseInit()
arango.create_collection()
arango.database.AQLQuery("FOR x IN inserts return x._key", rawResults=True, batchSize=1e6)
