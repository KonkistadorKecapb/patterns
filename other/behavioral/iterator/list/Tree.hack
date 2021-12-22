namespace Iterator;

final class Tree implements IterableCollection {
    final public function createIterator(): IIterator {
        throw new \Exception('For example Depth-first iterator');
    }

    final public function createOddIterator(): IIterator {
        throw new \Exception('For example Breadth-first iterator');
    }
}
