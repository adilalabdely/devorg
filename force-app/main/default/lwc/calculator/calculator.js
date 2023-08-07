import { LightningElement, track } from 'lwc';

export default class Calculator extends LightningElement {
    @track num1 = 0;
    @track num2 = 0;
    @track result = 0;

    changeHandler (event){
        this.num1 = event.target.value;
    }
    changeHandler2 (event){
        this.num2 = event.target.value;
    }
    summiation(){
        this.result = (+this.num1)+(+this.num2);
    }
    multiplication(){
        this.result = (this.num1*this.num2);
    }
}