import { LightningElement } from 'lwc';

export default class LocalProperties extends LightningElement {
    name;
    fullName = "Adil";
    age = 40;
    isComplete = true;
    location = {
        city: "New York",
        country: "United States"
    };
    fruits =["Banana", "Grape", "Apple", "Dragon"];
}