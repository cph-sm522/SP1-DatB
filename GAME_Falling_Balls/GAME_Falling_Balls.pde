ArrayList<Ball> balls;
PlayGame playgame;

public void setup(){
  size(800, 800);
  balls = new ArrayList<Ball>();
  playgame = new PlayGame();
  frameRate(60);
}


public void draw() {
  background(#BCE2FF);
  fill(0);
  line(0,height - 100,800,height - 100);
 
  if(!playgame.isGameOver()){
    if(frameCount % 10 == 0){
      balls.add(new Ball());
      }
    
    
   for(int i = balls.size()-1; i >= 0; i--) {
      Ball ball = balls.get(i);                      // Hent bolden på den aktuelle position i ArrayListen
      ball.update();                                 // Opdater boldens position
      ball.display();
      
      if(ball.ifClicked()) {
      balls.remove(i);                               // fjern bold fra ArrayListen
      playgame.addToScore();
      }
      
      if (ball.touchedGround()) {
        playgame.setGameOver(true);
      }
    }
}else {
    playgame.displayGameOver();
  }
  
  if(playgame.score==100){
    playgame.setGameWon(true);
    playgame.setGameOver(true);
    playgame.displayWonGame();
  }
  playgame.displayScore();
}

void mousePressed() {
  if (playgame.isGameOver() && playgame.isTryAgainClicked()) {
    playgame.resetGame();
  }
}
