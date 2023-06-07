@isTest
public class RankHandlerTest {
    @isTest
    public static void rankPrizeTest() {
        
        RankHandler RankHandler = new RankHandler();

        Assert.areEqual('Gold', RankHandler.rankPrize(1));
        Assert.areEqual('Silver', RankHandler.rankPrize(2));
        Assert.areEqual('Bronze', RankHandler.rankPrize(3));
        Assert.areEqual('Top 10', RankHandler.rankPrize(4));
        Assert.areEqual('Top 10', RankHandler.rankPrize(10));
        Assert.areEqual('Participation certificate', RankHandler.rankPrize(11));
        Assert.areEqual('Participation certificate', RankHandler.rankPrize(50));
    }

    @isTest
    public static void rankPrizeSwitch(){

        RankHandler RankHandler = new RankHandler();

        Assert.areEqual('Gold', RankHandler.rankPrizeSwitch(1));
        Assert.areEqual('Silver', RankHandler.rankPrizeSwitch(2));
        Assert.areEqual('Bronze', RankHandler.rankPrizeSwitch(3));
        Assert.areEqual('Top 10', RankHandler.rankPrizeSwitch(4));
        Assert.areEqual('Top 10', RankHandler.rankPrizeSwitch(10));
        Assert.areEqual('thank you for participating', RankHandler.rankPrizeSwitch(11));
        Assert.areEqual('thank you for participating', RankHandler.rankPrizeSwitch(50));
    }
}