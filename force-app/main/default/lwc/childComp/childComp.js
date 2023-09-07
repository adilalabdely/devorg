import { LightningElement } from 'lwc';

export default class ChildComp extends LightningElement {

    clickHandler(){
        console.log("Child comp: Before dispatching the event");
        const evt = new CustomEvent ("show", {bubbles: true, composed: true});
        this.dispatchEvent(evt);
        console.log("Child comp: After dispatching the event");
    }
}