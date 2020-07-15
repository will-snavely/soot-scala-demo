import soot.Scene;
import soot.SootClass;

public class Runner {
    public static void main(String[] args) {
    	Scene.v().addBasicClass("scala.runtime.java8.JFunction2$mcIII$sp",SootClass.HIERARCHY);
    	Scene.v().addBasicClass("scala.runtime.java8.JFunction1$mcIII$sp",SootClass.HIERARCHY);
    	Scene.v().addBasicClass("scala.runtime.java8.JFunction1$mcII$sp",SootClass.HIERARCHY);
        soot.Main.main(args);
    }
}

