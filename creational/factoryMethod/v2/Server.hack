namespace FactoryMethod\v2;

abstract class Server {

    final private function __construct() {

    }

    final public static function getServer(int $type): Server {
        if ($type === 1) {
            return new ConcreteServer1();
        } else if ($type === 2) {
            return new ConcreteServer2();
        }

        throw new \Exception("Type [$type] is not defined");
    }

    public abstract function getData(): string;
}
