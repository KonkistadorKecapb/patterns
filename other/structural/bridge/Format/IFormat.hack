namespace Bridge;

interface IFormat {

    public function addText(string $text): void;
    public function addNewLine(): void;

    public function startBold(): void;
    public function endBold(): void;

    public function startUpperCase(): void;
    public function endUpperCase(): void;

    public function startList(): void;
    public function endList(): void;
}
