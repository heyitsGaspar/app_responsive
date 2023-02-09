import 'package:flutter/material.dart';
import 'package:mediaqueary/widgets/appbars/vertical_appbar.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        color: Colors.yellow.shade100,
        child: Center(
          child: Column(
            children: [
              const Text(
                'Content',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                color: Colors.amber,
                width: 200,
                height: 100,
                child: Column(
                  children: [
                     Text(
                      'Altura: $screenheight',
                    ),
                    Text(
                      'Ancho: $screenwidth',
                    ),
                  ],
                ),
              ),
              const VerticalAppbar(),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 400,
                width: 250,
                color: Colors.blue.shade100,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.green.shade100,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Titulo de Producto',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20
                                ),  
                              ),
                  
                              // ignore: prefer_const_constructors
                              SizedBox(
                                width: 80,
                                child: const Text('Hola soy uan descripción.Hola soy uan descripción')
                              
                              ),
                              Row(
                                children: [
                                  IconButton(onPressed: (){}, 
                                  icon: const Icon(Icons.favorite)),
                  
                                  ElevatedButton(onPressed:(){}, 
                                  child: const Text('Comprar'))
                                ],
                              )
                            ],
                          ),
                          Image.asset(
                            "assets/image.jpg", 
                            height: 50, 
                            width: 50,
                            fit: BoxFit.cover,
                            
                          )
                        ],
                      ),
                    ),
                  );

                }),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}


