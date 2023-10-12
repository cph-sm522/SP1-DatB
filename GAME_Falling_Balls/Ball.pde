public class Ball{
    float xPos;
    float yPos;
    float speed;
    float size;

    public Ball() {               //Constructor
        xPos = random(width);
        yPos = 0;                      //Start position
        speed = random(2, 5);
        size = random(50, 100);
    }

    public void display(){
        fill(0,random(0,255),random(0,255),80);
        ellipse(xPos,yPos,size,size);
    }
    public void update() {
        yPos += speed;
    }

    public boolean ifClicked() {
        float d = dist(xPos,yPos, mouseX, mouseY);        //distance between the balls centrum, and the mouse position
        return (d < size);                        //return true if the mouseposition is within the size of the ball
    }

    public boolean touchedGround(){
        return yPos >= height - 100;
    }
}
