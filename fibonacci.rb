def fibs(n,ar=[0,1,1])
    return ar if n==3 
    ar<<(ar[ar.length-1]+ar[ar.length-2])
    return fibs(n-1, ar)
end
puts fibs(8)