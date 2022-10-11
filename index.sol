pragma solidity >=0.7.0 <0.9.0;

contract InfoContract {

   string fName;
   uint age;

     event Instructor(
       string name,
       uint age
   );
   
   function setInfo(string memory _fName, uint _age) public {
       fName = _fName;
       age = _age;
       emit Instructor(_fName, _age);
   }

   function getInfo() public view returns (string memory, uint) {
       return (fName, age);
   }
}