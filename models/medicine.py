
from sqlalchemy import Column, Integer, String, Text
from models.base_model import Base, BaseModel

"""
By inheriting from Base, the User class inherits all the features 
provided by Base, such as metadata management, reflection, 
and other ORM-related functionalities. This approach makes 
it easier to manage and work with database models in SQLAlchemy.
"""


class Medicine(BaseModel, Base):

    __tablename__ = 'medicine'

    name = Column(String(255), nullable=False)
    dosage = Column(String(255), nullable=False)
    cost = Column(Integer, nullable=False)
    description = Column(String(255), nullable=False)
    storage_conditions = Column(String(255), nullable=False)
    manufacturer = Column(String(255), nullable=False)
    description = Column(Text)

    def __init__(self, **kwargs):
        """initializes user"""
        super().__init__(**kwargs)