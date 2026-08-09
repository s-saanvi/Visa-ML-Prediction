from src.logger import logging
from src.exception import CustomException
import sys

logging.info("welcome")
try:
    a = 2/0
except Exception as e:
    raise CustomException(e,sys)