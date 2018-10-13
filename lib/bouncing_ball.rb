#codewars
#
# You drop a ball from a given height. After each bounce, the ball returns to some fixed proportion of its previous height. If the ball bounces to height 1 or less, we consider it to have stopped bouncing. Return the number of bounces it takes for the ball to stop moving.
#
# bouncingBall(initialHeight, bouncingProportion)
#
# boucingBall(4, 0.5)
# After first bounce, ball bounces to height 2
# After second bounce, ball bounces to height 1
# Therefore answer is 2 bounces
#
# boucingBall(30, 0.3)
# After first bounce, ball bounces to height 9
# After second bounce, ball bounces to height 2.7
# After third bounce, ball bounces to height 0.81
# Therefore answer is 3 bounces
# Initial height is an integer in range [2,1000]
#
# Bouncing Proportion is a decimal in range [0, 1]

#my solution
def bouncing_ball(initial, proportion, count = 0)
  count += 1
  new = initial * proportion
  if new > 1
    bouncing_ball(new, proportion, count)
  else
   count
  end
end

#others
def bouncing_ball(initial, proportion)
   initial <= 1 ? 0 : 1 + bouncing_ball(proportion * initial, proportion)
end

def bouncing_ball(h, bounce)
    count = 0
    while h > 1 do
        count += 1
        h *= bounce
    end
    count
end
