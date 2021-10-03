namespace Bridge;

final class AnnualReport extends AbstractReport {

    final public function print(): void {
        $this->printCaption('||| Annual Report |||');

        $this->printText('First line of annual report.');
        $this->printNewLine();

        $this->printText('Annual list:');

        $this->startList();
        $this->printListElement('1st annual element');
        $this->printListElement('2nd annual element');
        $this->printListElement('3rd annual element');
        $this->endList();

        $this->printFooter('=== Annual report finished ===');
    }
}
