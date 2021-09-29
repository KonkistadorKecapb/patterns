namespace Decorator;

final class Cache extends Decorator {

    final public function __construct(protected IComponent $component) {

    }

    final public function operation1(): int {
        $operation1 = $this->component->operation1();

        echo "Cache operation 1: [$operation1]\n";

        return $operation1;
    }

    final public function operation2(): string {
        $operation2 = $this->component->operation2();

        echo "Cache operation 2: [$operation2]\n";

        return $operation2;
    }
}
