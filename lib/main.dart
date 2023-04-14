import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ),);

}

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/brasaotij.png")
                  ),
                ),
              ),
            ],
          ),
        

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text('Procure por medicamentos distribuídos pelo SUS no município de Tijucas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
                ),
              ),
            ],
      ),

          Column(
            children:<Widget> [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 80),
                  width: 320,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Digite o bairro desejado",
                      hintStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.grey
                      ),
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
              ),
            ],
          ),

        Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 70),
                child:
                  Center(
                    child: ElevatedButton(
                      onPressed: (){
                        print ('Acesso Indisponnível');
                      },
                      child: Text('Acessar'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        minimumSize: Size(220, 50),
                        textStyle: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize:20,
                        ),
                      ),
                    ),
                  ),
              )
            ],
          ),
        
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: 
                AssetImage('images/sus.png'),
                width: 100,
                height: 100,
            )
            
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 140),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.info),
              SizedBox(width: 8),
              Text('Tutorial de como usar o APP',
              style: TextStyle(
                decoration: TextDecoration.underline,
                ),
                ),
            ],
          )
        )



        ]    
      ),
    );
  }
}