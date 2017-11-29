PFont font;
Entity enemy1;
Entity main;
void setup() {
	size(1000, 1000);
	font = loadFont("Font/ARESSENCE-48.vlw");							/*Init font type*/
	enemy1 = new Entity("Enemy","Orc");
	main = new Entity("Ally","Ninja");

}

void draw() {
	background(0);
	
}
void mouseClicked(){
	main.dealDamage("Punch",enemy1);
}