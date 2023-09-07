import { getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

export default class GetRecordToDo extends LightningElement {

    toDoId = "a0B3x000015uxBdEAI";

    @wire(getRecord, {
        recordId: '$toDoId',
        layoutTypes: ["Full"],
        modes: ["Edit"]
    }) toDo;
}