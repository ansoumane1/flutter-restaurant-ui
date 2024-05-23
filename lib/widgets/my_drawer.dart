import "package:flutter/material.dart";
class MyDrawer extends StatelessWidget {
  const MyDrawer ({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:  [

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                      accountName: Text("Waiter", style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      accountEmail: Text("waiter@example.com", style: TextStyle(fontSize: 16),
                      ),

                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/avatar.jpg"),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home, color: Colors.red,),
                    title: const Text("Home", style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold) ,),
                    onTap: (){
                      Navigator.pushReplacementNamed(context, "/");
                    },
                  ),
                  const ListTile(
                    leading: Icon(Icons.shop, color: Colors.red,),
                    title: Text("My Orders", style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold) ,),
                  ),
                  const ListTile(
                    leading: Icon(Icons.person, color: Colors.red,),
                    title: Text("Profile", style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold) ,),
                  ),
                ],
              ),
              const ListTile(
                leading: Icon(Icons.logout, color: Colors.red,),
                title: Text("Logout", style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold) ,),
              ),
            ],
          )



        ],
      ),
    );
  }
}
