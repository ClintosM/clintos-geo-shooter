// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function chooseState() {
	

	
	if (chasePlayer == true) {
		enemyMoveTowards(oPlayer.x, oPlayer.y)	
	} else {
		enemyWandering()
	}
	
}

function enemyIdle(){
	enemyPause(120)
}

function enemyWandering() {
	enemyMoveTowards(irandom(200), irandom(200))
}

function enemyMoveTowards(toX, toY) {

}

function enemyAttack() {
	
}      

function enemyPause(time) {
		
	if time > 0 {
		
		while time > 0 {
			time--	
		}
		
	}
		
}