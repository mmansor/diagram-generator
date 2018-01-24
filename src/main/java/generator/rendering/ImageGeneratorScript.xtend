package generator.rendering

import java.awt.Graphics2D

interface ImageGeneratorScript {
	def void render(Graphics2D graphics)
	def int getHeight()
	def int getWidth()
}