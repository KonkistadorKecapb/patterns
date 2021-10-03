namespace Composite;

final class Leaf extends TreeItem {

    final public function __construct(private string $value) {

    }

    final public function execute(): void {
        echo "Leaf value: [{$this->value}]\n";
    }
}
