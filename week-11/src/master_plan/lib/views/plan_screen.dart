// import '../models/data_layer.dart';
// import 'package:flutter/material.dart';

// class PlanScreen extends StatefulWidget {
//   const PlanScreen({super.key});

//   @override
//   State createState() => _PlanScreenState();
// }

// class _PlanScreenState extends State<PlanScreen> {
//   Plan plan = const Plan();

//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//     // ganti ‘Namaku' dengan Nama panggilan Anda
//     appBar: AppBar(title: const Text('Master Plan Namaku')),
//     body: _buildList(),
//     floatingActionButton: _buildAddTaskButton(),
//    );
//   }

//   Widget _buildAddTaskButton() {
//   return FloatingActionButton(
//    child: const Icon(Icons.add),
//    onPressed: () {
//      setState(() {
//       plan = Plan(
//        name: plan.name,
//        tasks: List<Task>.from(plan.tasks)
//        ..add(const Task()),
//      );
//     });
//    },
//   );
// }
// Widget _buildList() {
//   return ListView.builder(
//    itemCount: plan.tasks.length,
//    itemBuilder: (context, index) =>
//    _buildTaskTile(plan.tasks[index], index),
//   );
// }
// Widget _buildTaskTile(Task task, int index) {
//     return ListTile(
//       leading: Checkbox(
//           value: task.complete,
//           onChanged: (selected) {
//             setState(() {
//               plan = Plan(
//                 name: plan.name,
//                 tasks: List<Task>.from(plan.tasks)
//                   ..[index] = Task(
//                     description: task.description,
//                     complete: selected ?? false,
//                   ),
//               );
//             });
//           }),
//       title: TextFormField(
//         initialValue: task.description,
//         onChanged: (text) {
//           setState(() {
//             plan = Plan(
//               name: plan.name,
//               tasks: List<Task>.from(plan.tasks)
//                 ..[index] = Task(
//                   description: text,
//                   complete: task.complete,
//                 ),
//             );
//           });
//         },
//       ),
//     );
//   }
// }

import '../models/data_layer.dart';
import 'package:flutter/material.dart';
import '../provider/plan_provider.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  // Plan plan = const Plan();
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  Widget build(BuildContext context) {
    Plan plan = PlanProvider.of(context).value;
    return Scaffold(
      // ganti ‘Namaku' dengan Nama panggilan Anda
      appBar: AppBar(title: const Text('Master Plan Alvina')),
      body: Column(
        children: [
          Expanded(child: _buildList(PlanProvider.of(context).value)),
          SafeArea(child: Text(plan.completenessMessage)),
        ],
      ),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }

  Widget _buildAddTaskButton(BuildContext context) {
    ValueNotifier<Plan> planNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        Plan currentPlan = planNotifier.value;
        planNotifier.value = Plan(
          name: currentPlan.name,
          tasks: List<Task>.from(currentPlan.tasks)..add(const Task()),
        );
      },
    );
  }

  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan.tasks[index], index, context),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<Plan> planNotifier = PlanProvider.of(context);
    return ListTile(
      leading: Checkbox(
          value: task.complete,
          onChanged: (selected) {
            Plan currentPlan = planNotifier.value;
            planNotifier.value = Plan(
              name: currentPlan.name,
              tasks: List<Task>.from(currentPlan.tasks)
                ..[index] = Task(
                  description: task.description,
                  complete: selected ?? false,
                ),
            );
          }),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          Plan currentPlan = planNotifier.value;
          planNotifier.value = Plan(
            name: currentPlan.name,
            tasks: List<Task>.from(currentPlan.tasks)
              ..[index] = Task(
                description: text,
                complete: task.complete,
              ),
          );
        },
      ),
    );
  }
}
