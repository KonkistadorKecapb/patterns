namespace Iterator;

final class ItemList implements IterableCollection {
    final public function __construct(private vec<IItem> $list) {

    }

    final public function createIterator(): IIterator {
        return new RegularIterator($this->list);
    }

    final public function createOddIterator(): IIterator {
        return new OddIterator($this->list);
    }
}
