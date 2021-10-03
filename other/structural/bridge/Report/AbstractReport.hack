namespace Bridge;

abstract class AbstractReport {

    public abstract function print(): void;

    final public function __construct(private IFormat $format) {

    }

    final protected function printText(string $text): void {
        $this->format->addText($text);
    }

    final protected function printNewLine(): void {
        $this->format->addNewLine();
    }

    final protected function printCaption(string $caption): void {
        $this->format->startUpperCase();
        $this->format->startBold();

        $this->format->addText($caption);

        $this->format->endBold();
        $this->format->endUpperCase();

        $this->format->addNewLine();
    }

    final protected function printFooter(string $caption): void {
        $this->format->startBold();

        $this->format->addText($caption);

        $this->format->endBold();
    }

    final protected function startList(): void {
        $this->format->addNewLine();
        $this->format->startList();
        $this->format->addNewLine();
    }

    final protected function endList(): void {
        $this->format->endList();
        $this->format->addNewLine();
    }

    final protected function printListElement(string $text): void {
        $this->format->addText($text);
        $this->format->addNewLine();
    }
}
