ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
  TriggerEvent('esx_service:activateService', 'mcdonalds', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'mcdonalds', _U('mcdonalds_customer'), true, true)
TriggerEvent('esx_society:registerSociety', 'mcdonalds', 'mcdonalds', 'society_mcdonalds', 'society_mcdonalds', 'society_mcdonalds', {type = 'private'})



RegisterServerEvent('esx_mcdonaldsjob:getStockItem')
AddEventHandler('esx_mcdonaldsjob:getStockItem', function(itemName, count)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mcdonalds', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)
end)

ESX.RegisterServerCallback('esx_mcdonaldsjob:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mcdonalds', function(inventory)
    cb(inventory.items)
  end)
end)

RegisterServerEvent('esx_mcdonaldsjob:putStockItems')
AddEventHandler('esx_mcdonaldsjob:putStockItems', function(itemName, count)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mcdonalds', function(inventory)
    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)
  end)
end)


RegisterServerEvent('esx_mcdonaldsjob:getFridgeStockItem')
AddEventHandler('esx_mcdonaldsjob:getFridgeStockItem', function(itemName, count)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mcdonalds_fridge', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)
  end)
end)

ESX.RegisterServerCallback('esx_mcdonaldsjob:getFridgeStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mcdonalds_fridge', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_mcdonaldsjob:putFridgeStockItems')
AddEventHandler('esx_mcdonaldsjob:putFridgeStockItems', function(itemName, count)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mcdonalds_fridge', function(inventory)
    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_mcdonaldsjob:getPlayerInventory', function(source, cb)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  local items      = xPlayer.inventory
  cb({
    items      = items
  })
end)

RegisterServerEvent('mcdonaldsmaking:combination1') 
AddEventHandler('mcdonaldsmaking:combination1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('bread') 
	local xItem2 = xPlayer.getInventoryItem('ilikaburger')  
	
	if xItem1.count > 0 then  
		if xItem2.count > 0 then 
			TriggerClientEvent('mcdonaldsmaking:animation' , source)
			Citizen.Wait(10000) 
			xPlayer.addInventoryItem('cheeseburger', 1)	 
			xPlayer.removeInventoryItem('bread', 1) 
			xPlayer.removeInventoryItem('ilikaburger', 1) 
		else 
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You dont have all ingredients'})
		end
	else 
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You dont have all ingredients'})
	end 
end)

RegisterServerEvent('mcdonaldsmaking:combination2') 
AddEventHandler('mcdonaldsmaking:combination2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('bread') 
	local xItem2 = xPlayer.getInventoryItem('ilikaburger')  
	
	if xItem1.count > 0 then  
		if xItem2.count > 0 then 
			TriggerClientEvent('mcdonaldsmaking:animation' , source)
			Citizen.Wait(10000) 
			xPlayer.addInventoryItem('burger', 1)	 
			xPlayer.removeInventoryItem('bread', 1) 
			xPlayer.removeInventoryItem('ilikaburger', 1) 
		else 
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You dont have all ingredients'})
		end
	else 
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You dont have all ingredients'})
	end 
end)

RegisterServerEvent('mcdonaldsmaking:combination3') 
AddEventHandler('mcdonaldsmaking:combination3', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('bread') 
	local xItem2 = xPlayer.getInventoryItem('ilikaburger')  
	
	if xItem1.count > 0 then  
		if xItem2.count > 0 then 
			TriggerClientEvent('mcdonaldsmaking:animation' , source)
			Citizen.Wait(10000) 
			xPlayer.addInventoryItem('burgerall', 1)	 
			xPlayer.removeInventoryItem('bread', 1) 
			xPlayer.removeInventoryItem('ilikaburger', 1) 
		else 
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You dont have all ingredients'})
		end
	else 
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You dont have all ingredients'})
	end 
end)

ESX.RegisterUsableItem('cheeseburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cheeseburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
    xPlayer.showNotification("You ate your Cheese Burger") 
end)

ESX.RegisterUsableItem('burger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('burger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
    xPlayer.showNotification("You ate your Burger") 
end)

ESX.RegisterUsableItem('burgerall', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('burgerall', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
    xPlayer.showNotification("You ate your Burger") 
end)