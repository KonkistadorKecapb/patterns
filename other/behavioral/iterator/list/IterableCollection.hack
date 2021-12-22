namespace Iterator;

interface IterableCollection {
    public function createIterator(): IIterator;
    public function createOddIterator(): IIterator;
}
