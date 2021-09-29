namespace AbstractFactory;

final class Linux extends AbstractOperatingSystem {

    final public function createWindow(): AbstractWindow {
        self::print(__METHOD__);
        return new LinuxWindow();
    }

    final public function createButton(): AbstractButton {
        self::print(__METHOD__);
        return new LinuxButton();
    }

    final private static function print(string $method): void {
        echo "Linux called method $method";
    }
}
