import logging
from logging.handlers import RotatingFileHandler


log_file = "./logs.log"

logging.basicConfig(
    format='%(asctime)s - %(levelname)s - %(funcName)s: %(lineno)d - %(message)s',
    level=logging.DEBUG,
	handlers=[
		RotatingFileHandler(
			filename=log_file,
			mode='a',
			maxBytes=5 * 1024 * 1024,
			backupCount=1
		), 
        logging.StreamHandler()
	],
)
