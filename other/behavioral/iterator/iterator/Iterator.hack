namespace Iterator;

interface IIterator {
    public function first(): ?IItem;
    public function current(): ?IItem;
    public function next(): ?IItem;
    public function previous(): ?IItem;
}
