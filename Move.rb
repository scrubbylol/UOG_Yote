class Move
	def Move(oldPosition, newPosition, player, board)
		@oldPosition = oldPosition
		@newPosition = piecesInHand
		@player = player
		@board = board	
	end

	def isMoveValid()
		if (@oldPosition - @newPosition = 1 ||  @oldPosition - @newPosition = -1 || @oldPosition - @newPosition = 6 || @oldPosition - @newPosition = -6 )
			type = "move"
		elsif (@oldPosition - @newPosition = 2 ||  @oldPosition - @newPosition = -2 || @oldPosition - @newPosition = +12 || @oldPosition - @newPosition = -12)
			type = "capture"_
		else
			return false
		end

		if @board[newPosition].nil?
			return true
		else 
		end
			return false
		if newPosition > 30
			return false
		end
	end
end