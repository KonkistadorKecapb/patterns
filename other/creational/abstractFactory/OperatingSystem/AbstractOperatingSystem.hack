namespace AbstractFactory;

abstract class AbstractOperatingSystem {
    abstract public function createWindow(): AbstractWindow;
    abstract public function createButton(): AbstractButton;
}
