namespace Proxy;

final class Proxy implements ISubject {

    private ?int $cachedOperation1 = null;

    final public function __construct(private RealSubject $subject) {

    }

    final public function operation1(): int {
        if ($this->cachedOperation1 === null) {
            $this->cachedOperation1 = $this->subject->operation1();

            echo "operation1: data cached\n";
        } else {
            echo "operation1: return from cache\n";
        }

        return $this->cachedOperation1;
    }

    final public function operation2(): string {
        $operation2Result = $this->subject->operation2();

        $this->log($operation2Result);

        return $operation2Result;
    }

    final private function log(string $message): void {
        echo "operation2: Log message: [$message]\n";
    }
}
