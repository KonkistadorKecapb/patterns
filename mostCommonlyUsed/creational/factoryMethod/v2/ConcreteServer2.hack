namespace FactoryMethod\v2;

final class ConcreteServer2 extends Server {

    final public function getData(): string {
        return 'Server 2 (v2)';
    }
}
