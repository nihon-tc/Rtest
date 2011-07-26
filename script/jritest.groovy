import org.rosuda.JRI.REXP
import org.rosuda.JRI.Rengine

println "versionCheck=${Rengine.versionCheck()}"


def engine = new Rengine(["--no-save"] as String[] , false, null)

engine.assign("a", [36] as int[] )
def result = engine.eval("sqrt(a)")
println "result=${result.asDouble()}"

engine.end()

