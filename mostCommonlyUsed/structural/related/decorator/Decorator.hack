namespace Decorator;

abstract class Decorator implements IComponent {

    protected IComponent $component;

    abstract public function operation1(): int;
    abstract public function operation2(): string;
}
