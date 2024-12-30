package module_1.scala$minusproject.src.main.scala.example


final class example$u002Eworksheet$_ {
def args = example$u002Eworksheet_sc.args$
def scriptPath = """module_1/scala-project/src/main/scala/example/example.worksheet.sc"""
/*<script>*/
1 + 1

val x = 42

x * x

val h = 7
h * x
/*</script>*/ /*<generated>*//*</generated>*/
}

object example$u002Eworksheet_sc {
  private var args$opt0 = Option.empty[Array[String]]
  def args$set(args: Array[String]): Unit = {
    args$opt0 = Some(args)
  }
  def args$opt: Option[Array[String]] = args$opt0
  def args$: Array[String] = args$opt.getOrElse {
    sys.error("No arguments passed to this script")
  }

  lazy val script = new example$u002Eworksheet$_

  def main(args: Array[String]): Unit = {
    args$set(args)
    val _ = script.hashCode() // hashCode to clear scalac warning about pure expression in statement position
  }
}

export example$u002Eworksheet_sc.script as `example.worksheet`

