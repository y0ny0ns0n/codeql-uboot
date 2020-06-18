
import cpp

from Macro m, MacroInvocation mInvo
where
    mInvo.getMacro() = m and
    m.getName().regexpMatch("ntoh(s|l|ll)")
select mInvo, "ntoh* macro invocated"