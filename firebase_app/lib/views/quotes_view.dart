import 'package:firebase_app/theme/app_theme.dart';
import 'package:firebase_app/view_models/quotes_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class Quotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<QuotesViewModel>.withConsumer(
      onModelReady: (model) => model.getThem(),
      viewModelBuilder: () => QuotesViewModel(),
      builder: (context, model, _) => Scaffold(
        backgroundColor: darkTheme.backgroundColor,
        body: PageView.builder(
          itemCount: model.quo.length,
          itemBuilder: (context, index) => ListView(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height/12,
                  child: Text(
                    "\"",
                    style: darkTheme.textTheme.headline4
                        .copyWith(fontSize: 70, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  model.quo[index].en,
                  style: darkTheme.textTheme.headline4.copyWith(fontSize: 20),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 220.0),
                child: Text('- ${model.quo[index].author}',style: darkTheme.textTheme.headline4),
              ) 
            ],
          ),
        ),
      ),
    );
  }
}
