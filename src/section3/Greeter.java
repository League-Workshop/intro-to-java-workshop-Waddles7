package section3;

import javax.swing.JOptionPane;

public class Greeter {
	public static void main(String[] args) {
		String name = JOptionPane.showInputDialog("What is your name?");
		System.out.println("Hello " + name + ", how are you?");
		JOptionPane.showMessageDialog(null, "Hello " + name + ", how are you?");
	}
}