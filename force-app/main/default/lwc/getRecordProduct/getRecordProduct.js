import { LightningElement, wire } from 'lwc';
import TITLE_FIELD from '@salesforce/schema/Ecommerce_Product__c.Name';
import BRAND_FIELD from '@salesforce/schema/Ecommerce_Product__c.Brand__c';
import CATG_FIELD from '@salesforce/schema/Ecommerce_Product__c.Category__c';
import PRICE_FIELD from '@salesforce/schema/Ecommerce_Product__c.Price__c';
import RATING_FIELD from '@salesforce/schema/Ecommerce_Product__c.Rating__c';
import DESC_FIELD from '@salesforce/schema/Ecommerce_Product__c.Description__c';

import { getFieldDisplayValue, getFieldValue, getRecord } from 'lightning/uiRecordApi';

const FIELDS = [TITLE_FIELD, BRAND_FIELD, CATG_FIELD, PRICE_FIELD, RATING_FIELD,DESC_FIELD];

export default class GetRecordProduct extends LightningElement {
    prodId = "a093x00001iQFS8AAO";
    title;
    brand;
    category;
    price;
    rating;
    desc;

    //Approach1
@wire(getRecord, {
    recordId:'$prodId',
    fields: FIELDS
}) recordhandler({data, error}){
    if(data){
        this.title = getFieldValue(data, TITLE_FIELD);
        this.brand = getFieldValue(data, BRAND_FIELD);
        this.category = getFieldValue(data, CATG_FIELD);
        this.price = getFieldValue(data, PRICE_FIELD);
        this.rating = getFieldValue(data, RATING_FIELD);
        this.desc = getFieldValue(data, DESC_FIELD);
    }
}
    /** Approach 2
    @wire(getRecord, {
        recordId: '$prodId',
        fields: FIELDS
    }) products;

    get title(){
        return getFieldValue(this.products.data, TITLE_FIELD);
    }
    get brand(){
        return getFieldValue(this.products.data, BRAND_FIELD);
    }
    get category(){
        return getFieldValue(this.products.data, CATG_FIELD);
    }
    get price(){
        return getFieldValue(this.products.data, PRICE_FIELD);
    }
    get rating(){
        return getFieldValue(this.products.data, RATING_FIELD);
    }
    get desc(){
        return getFieldValue(this.products.data, DESC_FIELD);
    }
    **/
}