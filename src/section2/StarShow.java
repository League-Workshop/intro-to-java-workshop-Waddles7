package section2;

import org.jointheleague.graphical.robot.Robot;

/*** Teacher's note ***/
/* Before beginning recipe: 
* 1. ask students to find and explain the method in this recipe. 
* 2. ask students how they might use the method to make the picture in the laminated hand-outs. */

public class StarShow {
	
	Robot baller = new Robot("batman");
	
	void makeStars() {
		
		//drawStar(150);	//5. delete this line. You will draw the star again in step 8.
		// 13. Set the speed to 8
		baller.setSpeed(500);
		// 6. Make a variable to hold the X position of the Robot and set it to 10
		int x = 10;
		// 7. Make a variable to hold the Y position of the Robot and set it to 600
		int y = 600;
		// 8. Make a variable to hold the star size and set it to 25
		int starSize = 25;
		// 12. Use a for loop to repeat steps #19 to #18, 30 times
		for(int i = 0; i < 30; i++) {
			// 19. Set the pen width to i 
			baller.setPenWidth(i);
			// 10. Set the X position of the robot to your X variable
			baller.setX(x);
			// 11. Set the Y position of the robot to your Y variable
			baller.setY(y);
			// 9. Call the drawStar() method with your star size variable
			drawStar(starSize);
			// 14. Increase the value of the X position variable by star size. See Figure 2
			x += starSize;
			// 15. decrease the value of the Y position variable by star size. See Figure 3
			y += starSize;
			// 16. Increase the star size by 20
			starSize += 20;
			// 17. Turn the robot 12 degrees
			baller.turn(12);
			// 18. Make each star a different random color like in Figure 4
			baller.setRandomPenColor();
		}
	}

	private void drawStar(int starSize) {
		// 2. Put the robot's pen down
		baller.penDown();
		// 4. Repeat both commands 5 times. See Figure 1 at http://bit.ly/star-show
		for(int n = 0; n < 5; n++) {
			// 1. Move the robot the distance of the starSize variable
			baller.move(starSize);
			// 3. Turn the robot 144 degrees
			baller.turn(144);
		}
	}
	
	public static void main(String[] args) {
		new StarShow().makeStars();
	}
}



