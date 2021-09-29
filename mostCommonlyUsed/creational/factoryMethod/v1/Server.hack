namespace FactoryMethod\v1;

/*
    interface or abstract class

    for example:

    interface IServer {
        public function getData(): string;
    }
*/

abstract class Server {

    final public function __construct() {

    }

    public abstract function getData(): string;
}
