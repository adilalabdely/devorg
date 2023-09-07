import { LightningElement } from 'lwc';

export default class GrandParentComp extends LightningElement {

    showHandler1(event){
        console.log("Show Event reached parent: c-child-comp");
        console.log(event.target.nodeName);
        console.log(event.currentTarget.nodeName);
    }
}