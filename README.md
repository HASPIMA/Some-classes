# Some-classes
Classes for easy creation of differents tools, as sprites, buttons ...

## Class Sprite
1. Create a new sprite.
	*	Use the `Sprite ~` class to create a new object.
2. Initialize.
	*	Using `~ = new Sprite(imagePath,tam);`
		*	`imagePath`	:	is not necesary to call data/ folder
		*	`tam`	:	is the size of each part of the sprite, used for split the image in an array.
	* Using `~ = new Sprite(jsonPath);`
		*	`jsonPath`	: json Config of the sprite, used to call an animation with name.
3. Paint the sprite.
	*	Use `~.animate(min, max, speed, posX, posY, tam)` to paint the animation
	*	Use `~.animate("animationName", posX, posY, tam)` to paint the animation
	*	Use `~.paintFrame(int nFrame, posX, posY, tam)` to paint an especific frame of the animation.
		*	`min`	:	ArrayList start frame number.
		*	`max`	:	ArrayList end frame number.
		*	`speed`	:	Use a value betwee 0 - 1 where 0 is notAnimate,  1 sketch tick speed. 
		>	Values over 1 is just too fast, not recommended.
		*	`nFrame`:	ArrayList Value of the frame.
		*	`pos`	:	`x` and `y` are the center of the sprite position.
		*	`tam`	:	rescale the image.
		*	`"animationName"`:	Use the spriteConfig json to take the `min` `max` and `speed`.
	*	Extra
		*	You can use `if(~.animation)` to call just when you set `~.animation` true.
#### SpriteConfig.json
1. What is it used for?
	*	Used to set the configuration of an specific sprite.
2. How to use it?
	*	Inside an .json you have to put
		*	"path"	:	Reference of the spritePath.
		*	"tam"	:	Size of each part of the sprite.
		*	"speed"	:	General speed of the animation
		*	"start"	:	min values where in the array the animation start.
		*	"end"	:	min values where in the array the animation end.
		>	"start" and "end" have to be an JSONObject, where you set all the animation names. See the SpriteConfig example if you dont understand.
>To see an example please checkout Sprite Branch

## Class Button
1. Create a new button
	*	Use the `Button ~` class to create a new object.
2. Initialize
	*	Using `~ = new Button("text",posX,posY,posX2,posY2,backgroundColor,textColor);`
		*	`"text"`	:	text the appear in the button area.
		*	`pos`	:	`x`,`y`,`x2`,`y2` are the position of the top-left corner (`x`,`y`), and bottom-right corner (`x2`,`y2`) of the button area.
		* 	`backgroundColor`	:	color of the button area.
		*	`textColor`	:	color of the text button.
3. Paint the Button
	*	Use `~.paint()` to paint the button.
4. Button actions
	*	Use `~.clicked()` to know when the button is clicked, it return boolean value.
	*	Use `~.selected()` to know when the button is selected or the mouse is on  it, it return boolean value.
	*	Use `~.resize()` to make the button relative to width, height.
