Citizen.CreateThread(function()


    RequestIpl("berandai_cafe_int")
    
        interiorID = GetInteriorAtCoords(-2163.02417, -391.6452, 11.7669821)

        if IsValidInterior(interiorID) then
            EnableInteriorProp(interiorID, "mainroom")
            EnableInteriorProp(interiorID, "roomlock")
            EnableInteriorProp(interiorID, "casino")
            EnableInteriorProp(interiorID, "bossroom")
            EnableInteriorProp(interiorID, "kitchen")
            
            RefreshInterior(interiorID)
            
            end
            
        end)