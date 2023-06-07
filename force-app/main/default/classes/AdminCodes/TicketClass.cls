public class TicketClass {
    integer ticketNumber;
    string ticketType;

    public void setTicketNumber(integer tn){
        ticketNumber = tn;
    }

    public integer getTicketNumber(){
        return ticketNumber;
    }

    public string getTicketType(){
        if (ticketNumber >0 && ticketNumber <=200) {
            return 'Silver';  

        }else if (ticketNumber >200 && ticketNumber <=400) {
            return 'Gold';  

        }else if (ticketNumber >400 && ticketNumber <=600) {
            return 'Platinum';  
        }else {
            return 'Invalid Ticket Number';
        }
    }
}