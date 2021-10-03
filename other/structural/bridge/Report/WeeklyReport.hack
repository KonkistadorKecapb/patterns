namespace Bridge;

final class WeeklyReport extends AbstractReport {

    final public function print(): void {
        $this->printCaption('[[[ Weekly Report ]]]');

        $this->printText('First line of weekly report.');
        $this->printNewLine();

        $this->printText('Weekly list:');

        $this->startList();
        $this->printListElement('1st weekly element');
        $this->printListElement('2nd weekly element');
        $this->printListElement('3rd weekly element');
        $this->endList();

        $this->printFooter('--- Weekly report finished ---');
    }
}
