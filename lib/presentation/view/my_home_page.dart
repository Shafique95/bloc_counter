import 'package:block_counter/presentation/controller/block/block.dart';
import 'package:block_counter/presentation/controller/block/block_event.dart';
import 'package:block_counter/presentation/controller/block/block_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHompePage extends StatelessWidget {
  const MyHompePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBlock, CounterState>(builder: (context, state) {
            return Center(
              child: Text(
                  "${BlocProvider.of<CounterBlock>(context).state.counterState}"),
            );
          }),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(onPressed: () {
                BlocProvider.of<CounterBlock>(context).add(IncreaseEvents());
              }),
              FloatingActionButton(onPressed: () {
                BlocProvider.of<CounterBlock>(context).add(DecreaseEvent());
              })
            ],
          )
        ],
      ),
    );
  }
}
