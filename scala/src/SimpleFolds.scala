sealed trait LinkedList[+A]
case class Node[A](data: A, next: LinkedList[A]) extends LinkedList[A]
case object End extends LinkedList[Nothing]

object SimpleFolds {
  def foldLeft[A, B](as: LinkedList[A], b: B, f: (A, B) => B): B = as match {
    case End => b
    case Node(data, next) => foldLeft(next, f(data, b), f)
  }

  def foldRight[A, B](as: LinkedList[A], b: B, f: (A, B) => B): B = as match {
    case End => b
    case Node(data, next) => f(data, foldRight(next, b, f))
  }

  def main(args: Array[String]): Unit = {
    val intList = Node(1, Node(2, Node(3, Node(4, Node(5, End)))))
    assert(foldLeft(intList, 0, (a: Int, z: Int) => a + z) == 15)
    assert(foldRight(intList, 0, (a: Int, z: Int) => a + z) == 15)
  }
}