class Player
	def Player (playerID, piecesInHand, piecesCaptured, gameWins)
		@playerID = playerID
		@piecesInHand = piecesInHand
		@piecesCaptured = piecesCaptured
		@gameWins = gameWins	
	end

	def getPiece()
		return @piecesInHand
	end

	def hasPieces()
		if @piecesInHand != 0 then
			return true
		else
			return false
		end
	end
	def getPlayerID()
		return @playerID
	end
	def getPiecesCaptured()
		return @piecesCaptured
	end
	def addWin()
		@gameWins = @gameWins + 1
	end
	def getWin()
		return @gameWins
	end
	def reset()
		@piecesCaptured = 0
		@piecesInHand = 12
	end
	def addPieceCaptured()
		@piecesCaptured = @piecesCaptured + 1
	end
end

playerExample = Player.new
playerExample.Player(1, 12, 0, 1)
puts playerExample.getPiece()
puts playerExample.hasPieces()
puts playerExample.getPlayerID()
puts playerExample.getPiecesCaptured()
puts playerExample.getWin()
playerExample.addWin()
playerExample.addPieceCaptured()
puts playerExample.getPiecesCaptured()
puts playerExample.getWin()
playerExample.reset()
puts playerExample.getPiecesCaptured()
puts playerExample.getPiece()


puts"hello world"