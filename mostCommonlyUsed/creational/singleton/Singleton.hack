namespace Singleton;

final class Singleton {

    // private Singleton $instance = new Singleton();   // Singleton in Java (no nullable)
    private ?Singleton $instance;

    final private function __construct() {

    }

    final public function getInstance(): Singleton {

        // possible trouble with multithreading
        if ($this->instance === null) {
            $this->instance = new Singleton();
        }

        return $this->instance;
    }
}
