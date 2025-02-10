import logging
import subprocess
import loader

from pywal import colors, reload, image

if __name__ == '__main__':
	logging.info("Hello world!")
	image_file = image.get("./my-dotfiles-hyprland/wallpapers/3.png", iterative=True)
	result = colors.get(image_file, "wall")
	
	reload.kitty()
	print(result["colors"])