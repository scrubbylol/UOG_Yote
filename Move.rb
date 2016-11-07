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
		if @type == "capture"
			if (@board[@oldPosition + 1] == nil || @board[@oldPosition - 1] == nil || @board[@oldPosition + 6] == nil || @board[@oldPosition - 6] == nil)
				return false
			end
			currentlyPlayer = board[@oldPosition].getOwner()
			if (@board[@oldPosition + 1].getOwner == currentlyPlayer || @board[@oldPosition - 1].getOwner == currentlyPlayer || @board[@oldPosition + 6].getOwner == currentlyPlayer || @board[@oldPosition - 6].getOwner == currentlyPlayer)
				return false
			end
	end
	def makeMove()
		if @type == "move"
			@board[newPosition] = board[oldPosition]
			@board.removePiece(oldPosition)
		elsif @type = "capture"
			@board[newPosition] = board[oldPosition]
			@board.removePiece(oldPosition)
			piecesToCapture()
			getExtraPicesToRemove()
	end	
	def piecesToCapture()
		@board.removePiece(oldPosition)
	end
	def getExtraPicesToRemove()
		input = ask "Which position to remove"
		@board.removePiece(input)
end