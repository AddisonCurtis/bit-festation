////THIS DIDN'T WORK!!! PLACE meeting and position meeting both return false idk why
//var itemTemp = noone;
//if(room==roo_shop){	
//	show_debug_message("in room shop");
	
//	// If Object At Place
//	with(obj_cursor){
//		show_debug_message("bool: " + string(instance_place(x, y, obj_shopItem1) && itemTemp != noone));
//		if(instance_place(x, y, obj_shopItem1) && itemTemp != noone){
//			show_debug_message("collide");
//			itemTemp = obj_shopItem1;
//		}else 
//		if(instance_place(x, y, obj_shopItem2) && itemTemp != noone){
//			show_debug_message("collide");
//			itemTemp = obj_shopItem2;
//		}else 
//		if(instance_place(x, y, obj_shopItem3) && itemTemp != noone){
//			show_debug_message("collide");
//			itemTemp = obj_shopItem3;
//		}
//	}	
//}



/// @description Execute Code
//DISTANCE VARS
var interactRange = obj_player.sprite_width;
var playerX = x;
var playerY = y;
var isClose = false; //player can interact
//PLAYER MONEY
var moneyTemp = money;
show_debug_message("E pressed");



//ITEM 1 LOGIC - if in range, set item to invisible then add it to shopping cart
var itemTemp = obj_shopItem1;
with(itemTemp){
	if((abs(playerX - x) < interactRange + 1) && (abs(playerY - y) < interactRange) && self.visible){
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
	if((abs(playerX - x) < interactRange + 1) && (abs(playerY - y) < interactRange) && self.visible){
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
	if((abs(playerX - x) < interactRange + 1) && (abs(playerY - y) < interactRange) && self.visible){
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
	if((abs(playerX - x) <= interactRange) && (abs(playerY - y) <= interactRange)){
		isClose = true;
	}else{
		isClose = false;
	}
}
if(isClose){
	show_debug_message("boom");
	with(obj_shopController){
		//If the player can afford everything in the shopping cart basket the items are added to items list
		if(shoppingCartTotal < moneyTemp){
			show_debug_message("You have " + string(moneyTemp));
			show_debug_message("You can afford it");
			show_debug_message("shopping car total set to: " + string(shoppingCartTotal));	
			var basketTemp = shoppingCartBasket;		
			var i;
			show_debug_message(basketTemp);
			for(i = 0; i < array_length_1d(basketTemp); i+=1){
				with(obj_player){
					show_debug_message("You have " + string(moneyTemp));
					show_debug_message("loop: " + string(i));
					items[array_length_1d(basketTemp) + i] = basketTemp[i]; 	
					money -= basketTemp[i].price;
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

