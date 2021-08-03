class ContactModel{
  final String name;
  final String demomsg;
  final String profilePic;

  ContactModel({required this.name, required this.demomsg, required this.profilePic});
}


final List<ContactModel> contacts = [
  ContactModel(name: "Bhai", demomsg: "Hello Bhai", profilePic: "http://www.richmondelementary.com/subsites/Library/pictures/Default%20Images/GenericUser-1-.png"),
  ContactModel(name: "SavedMessage", demomsg: "You saved This", profilePic: "http://www.richmondelementary.com/subsites/Library/pictures/Default%20Images/GenericUser-1-.png"),
];