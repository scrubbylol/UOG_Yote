load 'Board.rb'
load 'Player.rb'

class Game
	def Game()
		@board = Board.new
		@player1 = Player.new
		@player2 = Player.new
		
		@player1.Player(1)
		@player2.Player(2)

	end

	def startGame()
		Game()
		@piece = Piece.new
		turn = 1
		@board.Board()

		while (@player1.hasPieces() && @player2.hasPieces())
			puts ("\nPlayer #{turn} what would you like to do?")
			puts ("1 - Move Piece")
			puts ("2 - Place Piece")
			print ("> ")
			inp = gets

			if (inp == "1\n")
				if (@board.pieceOnBoard?(turn) == true)
					puts ("What piece would you like to move?")
					if (turn == 1)
						puts @player1.getPieces()
					else
						puts @player2.getPieces()
					end
				else
					puts ("Player #{turn} has no pieces on board!")
				end
			elsif (inp == "2\n")
				print ("Player #{turn} place a piece (0-30): ")
				location = gets
				tempPiece = @piece.Piece(turn)
				if (@board.isEmpty?(location.to_i) == true)
					@board.addPiece(tempPiece, location.to_i)

					if (turn == 1)
						turn = 2
					else
						turn = 1
					end
				else
					puts ("That spot is taken!")
				end
			end
		end

		return @playerID
	end

	def waitForMove(currentPlayer)

	end

end

game = Game.new
game.startGame()