namespace Bridge;

final class Word implements IFormat {

    private bool $isList = false;

    final public function addText(string $text): void {
        if ($this->isList) {
            echo "\t*** ";
        }
        echo "<wordText>$text</wordText>";
    }

    final public function addNewLine(): void {
        echo "<wordBr>\n";
    }

    final public function startBold(): void {
        echo "<wordStrong>";
    }

    final public function endBold(): void {
        echo "</wordStrong>";
    }

    final public function startUpperCase(): void {
        echo "<wordUppercase>";
    }

    final public function endUpperCase(): void {
        echo "</wordUppercase>";
    }

    final public function startList(): void {
        $this->isList = true;
    }

    final public function endList(): void {
        $this->isList = false;
    }
}
