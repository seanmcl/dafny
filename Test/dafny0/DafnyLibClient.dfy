// RUN: %dafny /spillTargetCode:1 DafnyLib.dfy DafnyLib-extern.cs /useRuntimeLib /out:Output/DafnyLib.dll /compileTarget:cs > "%t"
// RUN: %dafny /spillTargetCode:1 /compile:3 "%s" Output/DafnyLib.dll >> "%t"
// RUN: %diff "%s.expect" "%t"

module Client {
  import Library  // this lives in DafnyLib.dll
  method Main() {
    Library.EntryPoint();
    print "bye\n";
  }
}
