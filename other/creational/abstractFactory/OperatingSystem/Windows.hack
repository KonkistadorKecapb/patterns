namespace AbstractFactory;

final class Windows extends AbstractOperatingSystem {

    final public function createWindow(): AbstractWindow {
        self::print(__METHOD__);
        return new WindowsWindow();
    }

    final public function createButton(): AbstractButton {
        self::print(__METHOD__);
        return new WindowsButton();
    }

    final private static function print(string $method): void {
        echo "Windows called method $method";
    }
}
