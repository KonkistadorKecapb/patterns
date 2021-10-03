namespace Bridge;

final class Pdf implements IFormat {

    private bool $isList = false;

    final public function addText(string $text): void {
        if ($this->isList) {
            echo "\t=== ";
        }
        echo "<pdfText>$text</pdfText>";
    }

    final public function addNewLine(): void {
        echo "<pdfBr>\n";
    }

    final public function startBold(): void {
        echo "<pdfStrong>";
    }

    final public function endBold(): void {
        echo "</pdfStrong>";
    }

    final public function startUpperCase(): void {
        echo "<pdfUppercase>";
    }

    final public function endUpperCase(): void {
        echo "</pdfUppercase>";
    }

    final public function startList(): void {
        $this->isList = true;
    }

    final public function endList(): void {
        $this->isList = false;
    }
}
