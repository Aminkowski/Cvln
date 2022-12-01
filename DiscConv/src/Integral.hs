module Integral where 

-- iscontinuous, isintegrable, integral

delta :: Fractional a => a -> a -> a -> a
delta a b n = (b-a)/n
ldelta :: (Fractional a, Enum a) => a -> a -> a -> [a]
ldelta a b n = [a, (a + delta a b n)..b]
rieman :: (Fractional a, Enum a) => a -> a -> (a -> a) -> a -> a
rieman a b f n = sum( map (* ((b-a)/(n+1)) ) (map (f) (ldelta a b n) ) )

-- want to have it so that the integral doesn't take the n argument and is sufficiently prescice
-- C^0, D^1, C^1, C^infinity, integrability and 
p0 :: (Fractional a, Enum a) => a -> a
p0 x = 3
p1 :: (Fractional a, Enum a) => a -> a
p1 x = 5 * x
p2 :: (Fractional a, Enum a) => a -> a
p2 x = x^2 - 1
p1' :: (Fractional a, Enum a) => a -> a
p1' x = 1/(x-1)

test = rieman (-23) (-7) p2 1000
test' = rieman 0 9 p1' 1000

-- also want to have  / adress the trouble caused by the limitations of Double percision
--
--ok so while i'm in this situation , either i should think of a plan / outline  or do the math proofues / results
--lets see, for the outline ... i wanna ... ooh so i wanna get rid of the n (precision parameter in my integral function(s)  and a theme that keeps coming up is mathematical / theoretical  precision vs precision  with regards to practical  limitations of the computer.  i can define / parametrize them separately  and combine them in the mmain function.  then maybe i can define "other" integrals lixe a trapezoid mased sum or simpson's rule stuff.  huh, is that it? is it kust onto applications after? fft's, convolutions and all that? 
--i think i also wanna maxe sure wy final integral also woxs in the complex case. 
--aight, i should stop avoiding it ad do the theoretical stuff in this jank ass siteation. (on bus, so no paper or looking at screens... annoying) {a/-o need to take a shit}    ..... naaaaaaaaaaah, it's probably more efficient if i do other tasks that are less affected by the esituaetieon
--
--
--ispolynomial :: (Num a) => (a -> a) -> Bool 
--oh jeez, i hadnt realized dow amstract "equating" functions is until now. 
--I junt took itmostly for granted. 
--but in a context like this, where you have a  "black box" function like thishow do you match that with another "function"  / set of instructions that you know?
--the obvious answer is to just check the output of the black box against that of your known instructions at every input that is relevant , which in a mathewatical context may be something lixe the  real numbers. 
--but thinking about it like a guess and check pocess



