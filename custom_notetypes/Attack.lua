function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Attack' then
		characterPlayAnim('boyfriend', 'attack', true);
		setProperty('boyfriend.specialAnim', true);
    end
end