declare
fun {Prime N}
   local PrimeAcc in
      fun {PrimeAcc N Div Sqrt}
	 if Div > Sqrt then true
	 elseif N mod Div == 0 then false
	 else {PrimeAcc N Div + 2 Sqrt}
	 end
      end
      if N == 1 then false
      elseif N == 2 then true
      elseif N mod 2 == 0 then false
      else {PrimeAcc N 3 {Float.toInt {Float.sqrt {Int.toFloat N}}}}
      end
   end
end

{Browse {Prime 11} == true}
{Browse {Prime 18} == false}
{Browse {Prime 23} == true}
{Browse {Prime 1} == false}
{Browse {Prime 5} == true}