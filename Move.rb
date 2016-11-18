class Move
	def Move(oldPosition, newPosition, player, board)
		@oldPosition = oldPosition
		@newPosition = newPosition
		@player = player
		@board = board	
	end

	def isMoveValid()
		if (@oldPosition - @newPosition = 1 ||  @oldPosition - @newPosition = -1 || @oldPosition - @newPosition = 6 || @oldPosition - @newPosition = -6 )
			@type = "move"
			print ("moving")
		elsif (@oldPosition - @newPosition = 2 ||  @oldPosition - @newPosition = -2 || @oldPosition - @newPosition = +12 || @oldPosition - @newPosition = -12)
			@type = "capture"
			print("capture")
		else
			print("not a move or capture")
			return false
		end

		if (@board.isEmpty?(@newPosition) == true)
			return true
		else 
			#print("its not empty")
			return true
		end

		if @newPosition > 30
			print("move out of 30")
			return false
		end

		if @type == "capture"
			if (@board[@oldPosition + 1] == nil || @board[@oldPosition - 1] == nil || @board[@oldPosition + 6] == nil || @board[@oldPosition - 6] == nil)
				print("bad capture 1")
				return false
			end
			currentlyPlayer = board[@oldPosition].getOwner()
			if (@board[@oldPosition + 1].getOwner == currentlyPlayer || @board[@oldPosition - 1].getOwner == currentlyPlayer || @board[@oldPosition + 6].getOwner == currentlyPlayer || @board[@oldPosition - 6].getOwner == currentlyPlayer)
				print("bad capture 2")
				return false
			end
		end
	end

	def makeMove()
		if @type == "move"
			print("moving piece in makemove\n")
			print @newPosition
			pieceToAdd = Piece.new
			pieceToAdd.Piece(@player)
			@board.addPiece(pieceToAdd, @newPosition)
			@board.removePiece(@oldPosition)
		elsif @type == "capture"
			piece = Piece.new
			piece.Piece(@player)
			@board.addPiece(@newPosition, location.to_i)
			@board.removePiece(@oldPosition)
			piecesToCapture()
			getExtraPicesToRemove()
		end
	end	

	def piecesToCapture()
		@board.removePiece(@oldPosition)

	end

	def getExtraPicesToRemove()
		puts "Which position to remove"
		input = gets 
		@board.removePiece(input)
	end
end