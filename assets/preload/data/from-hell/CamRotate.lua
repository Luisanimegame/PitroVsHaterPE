local rotCam = true
local rotCamInd = 0
local rotCamSpd = 3.5
local rotCamRange = 2

function onUpdate()
if rotCam then
rotCamInd = rotCamInd + 1
setProperty('camGame.angle',  math.sin(rotCamInd / 100 * rotCamSpd) * rotCamRange)
else
rotCamRange = 0
rotCamInd = 0
end
end