

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              color: index % 2 == 0 ? Colors.blue[50] : Colors.white,
              child: const ListTile(
                title: Column(children: [
                  Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'E-mail: qwe@qse.com',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Phone: 123123123',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ]),
                leading: Text('id: 1',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            );
          }),
    );
  }
}
