namespace Iterator;

final class ListItem implements IItem {
    final public function __construct(private string $value) {

    }

    final public function getValue(): string {
        return $this->value;
    }
}
