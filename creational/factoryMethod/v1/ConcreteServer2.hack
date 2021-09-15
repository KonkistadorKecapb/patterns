namespace FactoryMethod\v1;

final class ConcreteServer2 extends Server {

    final public function getData(): string {
        return 'Server 2 (v1)';
    }
}
