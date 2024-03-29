
from sqlalchemy import Column, Integer, String, Text
from models.base_model import Base, BaseModel

"""
By inheriting from Base, the User class inherits all the features 
provided by Base, such as metadata management, reflection, 
and other ORM-related functionalities. This approach makes 
it easier to manage and work with database models in SQLAlchemy.
"""


class Customer(BaseModel, Base):

    __tablename__ = 'customer'

    email = Column(String(128), nullable=False)
    password = Column(String(128), nullable=False)
    first_name = Column(String(128), nullable=True)
    last_name = Column(String(128), nullable=True)
    age = Column(Integer, nullable=False, default=18)

    def __init__(self, **kwargs):
        """initializes user"""
        super().__init__(**kwargs)