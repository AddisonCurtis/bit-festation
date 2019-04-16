/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 79343F15
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//DISTANCE VARS$(13_10)var interactRange = oPlayer.sprite_width;$(13_10)var playerX = x;$(13_10)var playerY = y;$(13_10)var isClose = false; //player can interact$(13_10)//PLAYER MONEY$(13_10)var moneyTemp = money;$(13_10)show_debug_message("E pressed");$(13_10)$(13_10)$(13_10)$(13_10)//ITEM 1 LOGIC - if in range, set item to invisible then add it to shopping cart$(13_10)var itemTemp = obj_shopItem1;$(13_10)with(itemTemp){$(13_10)	if((abs(playerX - x) < interactRange) && (abs(playerY - y) < interactRange) && self.visible){$(13_10)		isClose = true;$(13_10)		//TODO replace visible with item sold tag$(13_10)		self.visible = false;$(13_10)	}else{$(13_10)		isClose = false;$(13_10)	}$(13_10)}$(13_10)if(isClose){	$(13_10)	with(obj_shopController){$(13_10)		shoppingCartTotal += itemTemp.price;$(13_10)		if(array_length_1d(shoppingCartBasket) > 0){$(13_10)			shoppingCartBasket[array_length_1d(shoppingCartBasket)] = itemTemp;$(13_10)		}else{$(13_10)			shoppingCartBasket[0] = itemTemp;			$(13_10)		}$(13_10)		show_debug_message("item1 purchased: " + itemTemp.name);			$(13_10)	}	$(13_10)}$(13_10)$(13_10)//ITEM 2 LOGIC$(13_10)var itemTemp = obj_shopItem2;$(13_10)with(itemTemp){$(13_10)	if((abs(playerX - x) < interactRange) && (abs(playerY - y) < interactRange) && self.visible){$(13_10)		isClose = true;$(13_10)		//TODO replace visible with item sold tag$(13_10)		self.visible = false;$(13_10)	}else{$(13_10)		isClose = false;$(13_10)	}$(13_10)}$(13_10)if(isClose){	$(13_10)	with(obj_shopController){$(13_10)		shoppingCartTotal += itemTemp.price;$(13_10)		if(array_length_1d(shoppingCartBasket) > 0){$(13_10)			shoppingCartBasket[array_length_1d(shoppingCartBasket)] = itemTemp;$(13_10)		}else{$(13_10)			shoppingCartBasket[0] = itemTemp;			$(13_10)		}$(13_10)		show_debug_message("item1 purchased: " + itemTemp.name);			$(13_10)	}	$(13_10)}$(13_10)$(13_10)//ITEM 3 LOGIC$(13_10)var itemTemp = obj_shopItem3;$(13_10)with(itemTemp){$(13_10)	if((abs(playerX - x) < interactRange) && (abs(playerY - y) < interactRange) && self.visible){$(13_10)		isClose = true;$(13_10)		//TODO replace visible with item sold tag$(13_10)		self.visible = false;$(13_10)	}else{$(13_10)		isClose = false;$(13_10)	}$(13_10)}$(13_10)if(isClose){	$(13_10)	with(obj_shopController){$(13_10)		shoppingCartTotal += itemTemp.price;$(13_10)		if(array_length_1d(shoppingCartBasket) > 0){$(13_10)			shoppingCartBasket[array_length_1d(shoppingCartBasket)] = itemTemp;$(13_10)		}else{$(13_10)			shoppingCartBasket[0] = itemTemp;			$(13_10)		}$(13_10)		show_debug_message("item1 purchased: " + itemTemp.name);			$(13_10)	}	$(13_10)}$(13_10)$(13_10)//SHOPKEEPER LOGIC$(13_10)with(obj_shopKeeper){$(13_10)	if((abs(playerX - x) < interactRange) && (abs(playerY - y) < interactRange)){$(13_10)		isClose = true$(13_10)	}else{$(13_10)		isClose = false;$(13_10)	}$(13_10)}$(13_10)if(isClose){$(13_10)	with(obj_shopController){$(13_10)		//If the player can afford everything in the shopping cart basket the items are added to items list$(13_10)		if(shoppingCartTotal < moneyTemp){$(13_10)			show_debug_message("You can afford it");$(13_10)			show_debug_message("shopping car total set to: " + string(shoppingCartTotal));	$(13_10)			var basketTemp = shoppingCartBasket;		$(13_10)			var i;$(13_10)			show_debug_message(basketTemp);$(13_10)			for(i = 0; i < array_length_1d(basketTemp); i+=1){$(13_10)				with(oPlayer){$(13_10)					show_debug_message("loop: " + string(i));$(13_10)					items[array_length_1d(basketTemp) + i] = basketTemp[i]; 	$(13_10)				}$(13_10)			}			$(13_10)			//Reset items$(13_10)			shoppingCartTotal = 0;$(13_10)			shoppingCartBasket = noone;		$(13_10)			//TODO change these items to random items instead of just the same items visible again$(13_10)			obj_shopItem1.visible = true;$(13_10)			obj_shopItem2.visible = true;$(13_10)			obj_shopItem3.visible = true;	$(13_10)		//If they can't afford it then their cart is cleared$(13_10)		}else{		$(13_10)			show_debug_message("You can't afford " + string(shoppingCartTotal));	$(13_10)			shoppingCartTotal = 0;$(13_10)			shoppingCartBasket = noone;			$(13_10)			obj_shopItem1.visible = true;$(13_10)			obj_shopItem2.visible = true;$(13_10)			obj_shopItem3.visible = true;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)//Messages to track what's in the players inventory$(13_10)show_debug_message("Interaction Ended");$(13_10)var j;$(13_10)for(j = 0; j < array_length_1d(items); j+=1){$(13_10)	show_debug_message("Player has " + string(items[j]));$(13_10)}"
/// @description Execute Code
//DISTANCE VARS
var interactRange = oPlayer.sprite_width;
var playerX = x;
var playerY = y;
var isClose = false; //player can interact
//PLAYER MONEY
var moneyTemp = money;
show_debug_message("E pressed");



//ITEM 1 LOGIC - if in range, set item to invisible then add it to shopping cart
var itemTemp = obj_shopItem1;
with(itemTemp){
	if((abs(playerX - x) < interactRange) && (abs(playerY - y) < interactRange) && self.visible){
		isClose = true;
		//TODO replace visible with item sold tag
		self.visible = false;
	}else{
		isClose = false;
	}
}
if(isClose){	
	with(obj_shopController){
		shoppingCartTotal += itemTemp.price;
		if(array_length_1d(shoppingCartBasket) > 0){
			shoppingCartBasket[array_length_1d(shoppingCartBasket)] = itemTemp;
		}else{
			shoppingCartBasket[0] = itemTemp;			
		}
		show_debug_message("item1 purchased: " + itemTemp.name);			
	}	
}

//ITEM 2 LOGIC
var itemTemp = obj_shopItem2;
with(itemTemp){
	if((abs(playerX - x) < interactRange) && (abs(playerY - y) < interactRange) && self.visible){
		isClose = true;
		//TODO replace visible with item sold tag
		self.visible = false;
	}else{
		isClose = false;
	}
}
if(isClose){	
	with(obj_shopController){
		shoppingCartTotal += itemTemp.price;
		if(array_length_1d(shoppingCartBasket) > 0){
			shoppingCartBasket[array_length_1d(shoppingCartBasket)] = itemTemp;
		}else{
			shoppingCartBasket[0] = itemTemp;			
		}
		show_debug_message("item1 purchased: " + itemTemp.name);			
	}	
}

//ITEM 3 LOGIC
var itemTemp = obj_shopItem3;
with(itemTemp){
	if((abs(playerX - x) < interactRange) && (abs(playerY - y) < interactRange) && self.visible){
		isClose = true;
		//TODO replace visible with item sold tag
		self.visible = false;
	}else{
		isClose = false;
	}
}
if(isClose){	
	with(obj_shopController){
		shoppingCartTotal += itemTemp.price;
		if(array_length_1d(shoppingCartBasket) > 0){
			shoppingCartBasket[array_length_1d(shoppingCartBasket)] = itemTemp;
		}else{
			shoppingCartBasket[0] = itemTemp;			
		}
		show_debug_message("item1 purchased: " + itemTemp.name);			
	}	
}

//SHOPKEEPER LOGIC
with(obj_shopKeeper){
	if((abs(playerX - x) < interactRange) && (abs(playerY - y) < interactRange)){
		isClose = true
	}else{
		isClose = false;
	}
}
if(isClose){
	with(obj_shopController){
		//If the player can afford everything in the shopping cart basket the items are added to items list
		if(shoppingCartTotal < moneyTemp){
			show_debug_message("You can afford it");
			show_debug_message("shopping car total set to: " + string(shoppingCartTotal));	
			var basketTemp = shoppingCartBasket;		
			var i;
			show_debug_message(basketTemp);
			for(i = 0; i < array_length_1d(basketTemp); i+=1){
				with(oPlayer){
					show_debug_message("loop: " + string(i));
					items[array_length_1d(basketTemp) + i] = basketTemp[i]; 	
				}
			}			
			//Reset items
			shoppingCartTotal = 0;
			shoppingCartBasket = noone;		
			//TODO change these items to random items instead of just the same items visible again
			obj_shopItem1.visible = true;
			obj_shopItem2.visible = true;
			obj_shopItem3.visible = true;	
		//If they can't afford it then their cart is cleared
		}else{		
			show_debug_message("You can't afford " + string(shoppingCartTotal));	
			shoppingCartTotal = 0;
			shoppingCartBasket = noone;			
			obj_shopItem1.visible = true;
			obj_shopItem2.visible = true;
			obj_shopItem3.visible = true;
		}
	}
}

//Messages to track what's in the players inventory
show_debug_message("Interaction Ended");
var j;
for(j = 0; j < array_length_1d(items); j+=1){
	show_debug_message("Player has " + string(items[j]));
}