import cpp

from FunctionCall fcnCall, Function f
where
    fcnCall.getTarget() = f and
    f.getName() = "memcpy"
select fcnCall, "memcpy() called"