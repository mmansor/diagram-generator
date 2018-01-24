package generator.rendering.scripts

import generator.rendering.ImageGeneratorScript
import java.awt.Color
import java.awt.Graphics2D

class GridGeneratorScript implements ImageGeneratorScript {
	
	val int cols
	val int rows
	val int size
	
	new(int cols, int rows, int size) {
		this.cols = cols
		this.rows = rows
		this.size = size
	}
	
	override render(Graphics2D g) {
		g.color = Color.BLACK
		
		
		
		for(i: 0..<cols) {
			for(j: 0..<rows) {
				g.drawRect(i * size, j * size, size, size)
			}
			
			println("Rendering")
		}
	}
	
	override getHeight() {
		return rows * size
	}
	
	override getWidth() {
		return cols * size
	}
	
}