import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('avatar page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://scontent.flim16-1.fna.fbcdn.net/v/t1.0-9/65923334_2272418749477858_4008709070046363648_n.jpg?_nc_cat=110&_nc_oc=AQmDZNL9yomUcGBi_UJqmCHT8JQxVFjAtI6ldHYrOlOzCw7NKO2agog1CMbIVypWjHY&_nc_ht=scontent.flim16-1.fna&oh=9ddc1728915cd60117a628772a42d923&oe=5E15A755'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://scontent.flim16-1.fna.fbcdn.net/v/t1.0-9/67326381_2296350143751385_3572016805641715712_n.jpg?_nc_cat=105&_nc_oc=AQnkgLp0szabanR0R5nfZlj1EWWGi6ZX5kUF10GRW2yhCEPIlNOH19VJK-K-ZuWOLJA&_nc_ht=scontent.flim16-1.fna&oh=5db6fcea6503e223d77c07cdd84f8d3c&oe=5DD458F7'),
          placeholder: AssetImage('assets/plane_loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}