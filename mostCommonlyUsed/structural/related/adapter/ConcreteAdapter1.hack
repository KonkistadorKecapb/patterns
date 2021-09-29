namespace Adapter;

final class ConcreteAdapter1 implements IAdapter {

    final public function __construct(private Adaptee1 $adaptee) {

    }

    final public function operation1(): int {
        return $this->adaptee->doSomeOperation1() +
            $this->adaptee->doSomeOperation2();
    }

    final public function operation2(): string {
        return $this->adaptee->doSomeOperation3();
    }
}
