package generator.rendering.scripts

import generator.rendering.ImageGeneratorScript
import java.awt.Color
import java.awt.Graphics2D
import org.eclipse.xtend.lib.annotations.FinalFieldsConstructor

@FinalFieldsConstructor
class GridGeneratorScript implements ImageGeneratorScript {
	
	val int cols
	val int rows
	val int size
	
	override render(Graphics2D g) {
		g.color = Color.WHITE
		g.fillRect(0,0,width, height)
		
		g.color = Color.BLACK
		
		
		
		for(i: 0..<cols) {
			for(j: 0..<rows) {
				g.drawRect(i * size, j * size, size, size)
			}
		}
	}
	
	override getHeight() {
		return rows * size + 1
	}
	
	override getWidth() {
		return cols * size + 1
	}
	
}