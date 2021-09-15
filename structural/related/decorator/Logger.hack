namespace Decorator;

final class Logger extends Decorator {

    final public function __construct(
        protected IComponent $component,
        private string $prefix,
    ) {

    }

    final public function operation1(): int {
        $operation1 = $this->component->operation1();

        echo "Log operation 1 with prefix '{$this->prefix}': [$operation1]\n";

        return $operation1;
    }

    final public function operation2(): string {
        $operation2 = $this->component->operation2();

        echo "Log operation 2 with prefix '{$this->prefix}': [$operation2]\n";

        return $operation2;
    }
}
