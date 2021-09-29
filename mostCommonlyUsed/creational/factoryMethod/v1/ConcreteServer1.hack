namespace FactoryMethod\v1;

final class ConcreteServer1 extends Server {

    final public function getData(): string {
        return 'Server 1 (v1)';
    }
}
