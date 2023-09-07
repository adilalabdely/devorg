import { LightningElement } from 'lwc';

export default class QuerySelectorsDemo extends LightningElement {

    fruits=['Banana','Apple','Orange','Grape','Dragon'];

    handleClick(){
        //h1 element
        const helem = this.template.querySelector('h1');
        console.log(helem.innerText);
        helem.style.color = "green";
        helem.style.backgroundColor = "skyblue";
        helem.style.border = "2px solid black"; 
        helem.style.fontFamily='fantasy';
        helem.style.fontStyle='italic';
        helem.style.borderRadius='6px';
    
       // p element
        const pelem = this.template.querySelector('p');
        console.log(pelem);
        pelem.style.color = "blue";
        pelem.style.backgroundColor = "white";
        pelem.style.border = "2px solid blueColor";
        pelem.style.margin ='2px';
        pelem.style.fontFamily='monoSpace';
        pelem.style.borderRadius='6px';
    
        // div => fruit elements
        const divelem = this.template.querySelectorAll('div.child');
        console.log(divelem);
        divelem.forEach(item => {
            console.log (item.innerText);
            item.style.color = "yellow";
            item.style.backgroundColor = 'grey';
            item.style.border = "2px solid purple";
            item.style.margin ='4px';
            item.style.borderRadius='6px';
            item.setAttribute('class','slds-align_absolute-center'); //slds-box_x-small
        });
    }
}