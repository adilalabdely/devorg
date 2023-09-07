import { LightningElement } from 'lwc';

export default class ModalComponent extends LightningElement {

    closeHandler() {
        //Simple Event
        //const evt = new CustomeEvent('close');

        //event with data
        const message = {
            name: 'Adil',
            title: 'Salesforce Developer'
        };
        const evt = new CustomEvent('close', {detail: message});
        this.dispatchEvent(evt);
    }
}