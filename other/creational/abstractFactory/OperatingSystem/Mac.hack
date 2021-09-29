namespace AbstractFactory;

final class Mac extends AbstractOperatingSystem {

    final public function createWindow(): AbstractWindow {
        self::print(__METHOD__);
        return new MacWindow();
    }

    final public function createButton(): AbstractButton {
        self::print(__METHOD__);
        return new MacButton();
    }

    final private static function print(string $method): void {
        echo "Mac called method $method";
    }
}
