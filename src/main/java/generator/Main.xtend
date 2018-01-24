package generator

import generator.gui.GeneratorWindow
import generator.rendering.scripts.GridGeneratorScript
import java.awt.Graphics2D
import java.awt.image.BufferedImage
import java.io.File
import javax.imageio.ImageIO

class Main {
	def static void main(String[] args) {
		val window = new GeneratorWindow()
		
		window.createWindow()
		
		val script = new GridGeneratorScript(10, 10, 50)
		
		val image = new BufferedImage(script.width, script.height, BufferedImage.TYPE_INT_ARGB)
		
		script.render(image.graphics as Graphics2D)
		
		
		
		window.image = image
		
		ImageIO.write(image, "png", new File("image.png"))
	}
}