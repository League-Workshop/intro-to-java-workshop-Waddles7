package section4;

import javax.swing.JOptionPane;

public class QuizGame {
	
	public static void main(String[] args) {
		
		int score = 0;
		 
		String q1 = JOptionPane.showInputDialog("Q1: What is the capital of Washington State?");
		if (q1.equals("olympia")) {
			score += 1;
		}
		String q2 = JOptionPane.showInputDialog("Q2: How many three pointers did Stephen Curry score in 2018 to beat a finals record?");
		if (q2.equals("9")) {
			score += 1;
		}
		String q3 = JOptionPane.showInputDialog("Q3: What video game allows you to build your own creations out of cardboard?");
		if (q3.equals("nintendo labo")) {
			score += 1;
		}
		String q4 = JOptionPane.showInputDialog("Q4: What is the name of the main character's virtual avatar in the book/movie, Ready Player One?");
		if (q4.equals("parzival")) {
			score += 1;
		}
		String q5 = JOptionPane.showInputDialog("Final Q: What are the first 28 digits of pi?");
		if (q5.equals("3.141592653589793238462643383")) {
			score += 1;
		}
		JOptionPane.showMessageDialog(null, "Congratulations! You scored " + score + " point(s)!");
			
	}
}
