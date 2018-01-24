package generator

import generator.gui.GeneratorWindow
import generator.rendering.scripts.GridGeneratorScript

class Main {
	def static void main(String[] args) {
		val window = new GeneratorWindow()
		
		window.createWindow()
		
		window.useScript(new GridGeneratorScript(10, 10, 50))
	}
}