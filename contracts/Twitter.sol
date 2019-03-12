pragma solidity ^0.5.0;

contract Twitter {

    struct Tweet {
        uint id;
        //uint userId;
        string text;
    }

    Tweet[] public tweetList;
   // mapping (uint=>Tweet) tweetMap;
    uint tweetIdCounter;
    event TweetSent(
        uint tweetId, 
       // uint userId, 
        string text
    );
    
    constructor () public {
        tweetIdCounter++;
        Tweet memory tweet = Tweet(tweetIdCounter, "test");
        tweetList.push(tweet);
    }

    function SendTweet(string memory _text) public {
        tweetIdCounter++;
        Tweet memory tweet = Tweet(tweetIdCounter, _text);
        tweetList.push(tweet);
        //tweetMap[_userId] = tweet;
        emit TweetSent(tweetIdCounter,  _text);
    }

    //function GetTweets() public view {

    //}
}