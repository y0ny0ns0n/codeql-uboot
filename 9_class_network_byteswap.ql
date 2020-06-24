import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap () {
        exists(Macro m, MacroInvocation mInvo | 
            mInvo.getMacro() = m and m.getName().regexpMatch("ntoh(s|l|ll)") and this = mInvo.getExpr()
        )
    }
}


from NetworkByteSwap n
select n, "Network byte swap"