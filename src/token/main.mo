import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";

actor Token {
    var owner: Principal = Principal.fromText("ttc6g-crsou-a53di-rvqw7-5mcbg-e5lpw-l3qzk-z4o2d-yzmb7-7xhf7-cae ")
    var totalSupply: Nat = 1000000000;
    var symbol: Text = "Phit";

    var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);
    balances.put(owner, totalSupply);


    public query func balanceOf(who: Principal) : async Nat {

        let balance : Nat = switch balances.get(who) {
            case null 0;
            case (?result) result;
        };

        return balance
    };




};

