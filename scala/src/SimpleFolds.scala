sealed trait LinkedList[+A] {
  def foldLeft[B](z: B, f: (A, B) => B): B = this match {
    case End => z
    case Node(data, next) => next.foldLeft(f(data, z), f)
  }

  def foldRight[B](z: B, f: (A, B) => B): B = this match {
    case End => z
    case Node(data, next) => f(data, next.foldRight(z, f))
  }
}

case class Node[A](data: A, next: LinkedList[A]) extends LinkedList[A]
case object End extends LinkedList[Nothing]

object SimpleFolds {
  def main(args: Array[String]): Unit = {
    val intList = Node(1, Node(2, Node(3, Node(4, Node(5, End)))))
    assert(intList.foldLeft(0, (a: Int, z: Int) => a + z) == 15)
    assert(intList.foldRight(0, (a: Int, z: Int) => a + z) == 15)
  }
}
