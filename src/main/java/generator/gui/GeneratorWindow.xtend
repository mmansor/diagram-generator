package generator.gui

import generator.rendering.ImageGeneratorScript
import generator.rendering.scripts.ImageDrawingScript
import java.awt.Color
import java.awt.Dimension
import java.awt.Graphics
import java.awt.Graphics2D
import java.awt.image.BufferedImage
import javax.swing.JFrame
import javax.swing.JPanel

class GeneratorWindow {
	var JFrame frame = null;
	var JPanel panel = null;
	
	var ImageGeneratorScript currentScript = null;
	
	def createWindow() {
		frame = new JFrame() => [
			defaultCloseOperation = JFrame.EXIT_ON_CLOSE
			
			add(panel = new JPanel() {
				override paintComponent(Graphics g) {
					if(currentScript !== null) {
						currentScript.render(g as Graphics2D)
					}
				}
			}=> [
				preferredSize = new Dimension(200,200)
				background = Color.WHITE
				
			])
			
			
			pack()
			visible = true;	
		]
			
	}
	
	def void useScript(ImageGeneratorScript script) {
		panel.preferredSize = new Dimension(script.width, script.height)
		currentScript = script
		
		panel.repaint
		
		frame.pack()
	}
	
	def void setImage(BufferedImage image) {
		useScript(new ImageDrawingScript(image))
	}
}