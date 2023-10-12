public class PlayGame{
  
    public int score;
    public boolean gameOver;
    public boolean gameWon;

    public PlayGame() {
        //balls = new ArrayList<Ball>();
    }

    public void displayScore(){
        fill(0);
        textSize(20);
        text("Score: "+ score,50,50);
    }

    public void addToScore(){ //Optæller point
        score++;
    }
    
    public boolean isGameWon(){
      return gameWon;
    }
    
    public boolean isGameOver(){  //tjek om spil er slut og retuner værdien
        return gameOver;
    }
    
    public void setGameWon(boolean value){
      gameWon = value;
    }

    public void setGameOver(boolean value){ //indstil spilstatus !!!!!!!!!!!!!!!!!!
        gameOver = value;
    }

    public void displayGameOver() {
        background(#FAF488);
        fill(0);
        textSize(90);
        textAlign(CENTER, CENTER);
        text("You lost", width / 2, height / 2-150);

        rectMode(CENTER);
        rect(width / 2, height / 2 + 50, 250, 120);
        fill(255);
        textSize(40);
        text("Try again", width / 2, height / 2 + 50);
    }
    
    public void displayWonGame(){
      background(#D0C1FF);
      fill(0);
      textSize(90);
      textAlign(CENTER,CENTER);
      text("YOU WON", width / 2, height /2 -150);
      
      rectMode(CENTER);
      rect(width / 2, height /2 +50, 250, 120);
      fill(255);
      textSize(40);
      text("Restart",width/2, height/ 2 + 50 );
    }

    public boolean isTryAgainClicked(){
      return mouseX>width/2-125 && mouseX < width/2+125 && mouseY > height/2-10 && mouseY < height/2 + 110;
    }
    
    public boolean isRestartClicked(){
      return mouseX>width/2-125 && mouseX < width/2+125 && mouseY > height/2-10 && mouseY < height/2 + 110;
    }
    
    public void resetGame(){  //fjern bolde, nulstil score og nulstil spilstatus
        balls.clear();
        score = 0;
        gameOver = false;
    }
}
