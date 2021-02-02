pragma solidity ^0.5.16;

contract registerAccount {
    
    uint public numAccount; //アカウント番号
    
    //コンストラクタ
    constructor() public {
        numAccount = 0;
    }
    
    //アカウント情報を記録する構造体
    struct account {
        address addr; //ウォレットアドレス
        string name; //名前
        string email; //Eメール
    }
    
    mapping(uint => account) public accounts;
    
    
    //アカウント情報を登録する関数
    function register (string memory _name, string memory _email) public {
        accounts[numAccount].addr = msg.sender; //msg.senderのアドレスが格納される
        accounts[numAccount].name = _name;
        accounts[numAccount].email = _email;
        numAccount++;
    }
    
    //アカウント情報を取得する
    function getInfo(uint numAccount) public view returns(string memory) {
        return accounts[numAccount].name;
    }
}

