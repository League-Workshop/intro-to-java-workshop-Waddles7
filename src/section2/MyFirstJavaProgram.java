package section2;

import java.awt.Color;
import org.jointheleague.graphical.robot.Robot;

public class MyFirstJavaProgram {
	
	public static void main(String[] args) {
		
		// START HERE
		Robot c3p0 = new Robot();
		c3p0.setSpeed(100);
		c3p0.penDown();
		for(int i = 0; i < 4; i++) {
			c3p0.move(100);
			c3p0.turn(90);
		}
	}
}	
