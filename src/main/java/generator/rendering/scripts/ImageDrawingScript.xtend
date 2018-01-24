package generator.rendering.scripts

import generator.rendering.ImageGeneratorScript
import java.awt.Graphics2D
import java.awt.image.BufferedImage

class ImageDrawingScript implements ImageGeneratorScript {
	
	val BufferedImage image
	
	new(BufferedImage image) {
		this.image = image
	}
	
	
	override render(Graphics2D graphics) {
		graphics.drawImage(image,0,0,null)
	}
	
	override getHeight() {
		return image.height
	}
	
	override getWidth() {
		return image.width
	}
	
}