namespace Iterator;

final class RegularIterator implements IIterator {

    private int $currentIndex = -1;

    final public function __construct(private vec<IItem> $list) {
        $this->setCurrent(0);
    }

    final public function first(): ?IItem {
        $this->setCurrent(0);
        return $this->current();
    }

    final public function current(): ?IItem {
        if (
            ($this->currentIndex > -1) &&
            ($this->currentIndex < $this->getCountOfElements())
        ) {
            return $this->list[$this->currentIndex];
        }

        return null;
    }

    final public function next(): ?IItem {
        $this->setCurrent($this->currentIndex + 1);
        return $this->current();
    }

    final public function previous(): ?IItem {
        $this->setCurrent($this->currentIndex - 1);
        return $this->current();
    }

    final private function setCurrent(int $index): void {
        if (($index >= -1) && ($index <= $this->getCountOfElements())) {
            $this->currentIndex = $index;
        }
    }

    final private function getCountOfElements(): int {
        return \HH\Lib\C\count($this->list);
    }
}
