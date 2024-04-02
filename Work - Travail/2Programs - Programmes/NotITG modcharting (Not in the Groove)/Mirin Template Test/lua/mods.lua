if not P1 or not P2 then
	SCREENMAN:SystemMessage("Two Player Mode Required") -- Report the error to the user
	GAMESTATE:FinishSong() -- Force end the song
	foreground:hidden(1) -- Hide the foreground to disable update loop
	return
end
foreground:SetFarDist(10000)

-- player proxies
for pn = 1, #PP do
	PP[pn]:SetTarget(P[pn])
	P[pn]:hidden(1)
end

-- judgment proxies
for pn = 1, 2 do
	local judgment = P[pn]("Judgment")
	judgment:sleep(9e9)
	judgment:hidden(1)
	PJ[pn]:SetTarget(judgment)
	PJ[pn]:xy(scx * (pn-0.5), scy)
end

-- combo proxies
for pn = 1, 2 do
	local combo = P[pn]("Combo")
	combo:sleep(9e9)
	combo:hidden(1)
	PC[pn]:SetTarget(combo)
	PC[pn]:xy(scx * (pn-0.5), scy)
end

-- your code goes here here:
setdefault {2, 'xmod', 100, 'overhead', 100, 'dizzyholds', 100, 'modtimer'}
set {0, 50, 'beat0'}
set {0, 50, 'beaty1'}
set {0, -50, 'beaty2'}
set {0, -50, 'beat3'}
set {3.5, 0, 'beat0'}
set {3.5, 0, 'beaty1'}
set {3.5, 0, 'beaty2'}
set {3.5, 0, 'beat3'}

ease {0, 1, outCubic, 100, 'reverse0'}
ease {1, 1, outCubic, 100, 'reverse1'}
ease {2, 1, outCubic, 100, 'reverse2'}
ease {3, 1, outCubic, 100, 'reverse3'}

set {4.5, 100, 'dark1'}
set {4.5, 100, 'dark2'}
set {4.5, 100, 'dark3'}
set {5.5, 0, 'dark3'}
set {5.5, 100, 'dark0'}
set {6.5, 0, 'dark1'}
set {6.5, 100, 'dark3'}
ease {6.5, 1, inCubic, 0, 'dark0'}
ease {6.5, 1, inCubic, 0, 'dark2'}
ease {6.5, 1, inCubic, 0, 'dark3'}

for i = 8,12,4 do
	ease {i, 2, inOutCubic, 325, 'x', plr=1}
	ease {i, 2, inOutCubic, -325, 'x', plr=2}
	ease {i+2, 2, inOutCubic, 0, 'x', plr=1}
	ease {i+2, 2, inOutCubic, 0, 'x', plr=2}
end

ease {14, 2, inOutCubic, 0, 'reverse0', plr=1}
ease {14, 2, inOutCubic, 0, 'reverse1', plr=1}
ease {14, 2, inOutCubic, 0, 'reverse2', plr=1}
ease {14, 2, inOutCubic, 0, 'reverse3', plr=1}
ease {14, 2, inOutCubic, 0, 'reverse0', plr=2}
ease {14, 2, inOutCubic, 0, 'reverse1', plr=2}
ease {14, 2, inOutCubic, 0, 'reverse2', plr=2}
ease {14, 2, inOutCubic, 0, 'reverse3', plr=2}

ease {14, 1, inExpo, 200, 'attenuate'}
ease {19, 2, inOutExpo, 0, 'attenuate'}

ease {22, 2, inOutCubic, 100, 'arrowpath0'}
ease {22, 2, inOutCubic, 100, 'arrowpath1'}
ease {22, 2, inOutCubic, 100, 'arrowpath2'}
ease {22, 2, inOutCubic, 100, 'arrowpath3'}
ease {22, 2, inOutCubic, 100, 'flip'}
ease {22, 2, inOutCubic, 180, 'rotationz'}
ease {22, 2, inOutCubic, -70, 'rotationx'}
