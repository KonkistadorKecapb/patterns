namespace Adapter;

final class ConcreteAdapter2 implements IAdapter {

    final public function __construct(private Adaptee2 $adaptee) {

    }

    final public function operation1(): int {
        return $this->adaptee->doSomeOperation1();
    }

    final public function operation2(): string {
        return $this->adaptee->doSomeOperation2();
    }
}
