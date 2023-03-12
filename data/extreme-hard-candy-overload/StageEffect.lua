
function onBeatHit( ... )
	if curBeat == 232 then
	StarFXEnable(true)
	DOIT()
	doTweenAlpha('WhiteEdgeA', 'WhiteEdge', .3, 2,'cubeOut')
	end


	if curBeat == 296 then
	StarFXEnable(false)
	doTweenAlpha('WhiteEdgeA', 'WhiteEdge', 0, 2,'cubeOut')
	end
	
	if curBeat == 304 then
	StarFXEnable(true)
	doTweenAlpha('WhiteEdgeA', 'WhiteEdge', .3, 2,'cubeOut')
	end


	if curBeat == 360 then
	StarFXEnable(false)
	DOIT()
	doTweenAlpha('WhiteEdgeA', 'WhiteEdge', 0, 2,'cubeOut')
	end
	

end

function DOIT( ... )
	cameraFlash('hud','8A7752',.75)
	--doTweenAlpha('WhiteEdgeAStart', 'WhiteEdge', .6, 0.001)
	setProperty('isPlayFX',true)
end

function StarFXEnable(please)
	if please then
	doTweenAlpha('StarFXA', 'StarFX', 1, 2,'cubeOut')
	else
	doTweenAlpha('StarFXA', 'StarFX', 0, 2,'cubeOut')
	end
end

function onTweenCompleted( tag )
	if tag == 'WhiteEdgeAStart' then
	doTweenAlpha('WhiteEdgeAEnd', 'WhiteEdge', 0, 2,'cubeOut')
	end
end