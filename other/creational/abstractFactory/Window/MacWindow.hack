namespace AbstractFactory;

final class MacWindow extends AbstractWindow {
    final public function getCaption(): string {
        return 'Mac window caption';
    }
}
