import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/Text.dart';
import 'package:nutry_fit/Core/colors.dart';

import 'Widgets/widgets.dart';

class Screen_Simple_homeWorkouts extends StatelessWidget {
  const Screen_Simple_homeWorkouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizzbox(screenheight, 0.05),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Normaltext(
                    text: 'Simple home exercise for men & women',
                    size: 15,
                    weight: FontWeight.w500),
              ),
              sizzbox(screenheight, 0.02),
              Normaltext(
                  text: 'Beginner routine', size: 17, weight: FontWeight.w500),
              Colortext(
                  color: grey,
                  text: '* This circuit  should take about  15-20 minutes',
                  size: 13,
                  weight: FontWeight.w400),
              Center(
                child: Column(
                  children: [
                    inkwellExerciseImageContainer(
                        describe:
                            'Activate your core and posterior chain(a fancy term for the backside of your body)with a bridge. This is a great exerciseto use as a warmup.',
                        direction1:
                            'Lie on your back with your knees bent, feet flat on the floor, and your arms extended by your sides.',
                        direction2:
                            'Pushing through your feet and bracing your core, raise your bottom off the ground until your hips are fully extended, squeezing your glutes at the top.',
                        direction3:
                            'Slowly return to the starting position and repeat.',
                        context: context,
                        screenheight: screenheight,
                        screenwidth: screenwidth,
                        exerciseName: 'Bridge',
                        imagePath:
                            'assets/gif/bridge-stretch-and-exercise-gif.gif'),
                    inkwellExerciseImageContainer(
                        describe:
                            'Squat to strengthen your legs and core, which will make everyday movements easier. Starting with a chair underneath you will help you master proper form.',
                        direction1:
                            'Stand in front of the chair with your feet shoulder-width apart, toes pointed slightly out.',
                        direction2:
                            'Hinging at your hips and bending your knees, lower back and down until your bottom touches the chair, allowing your arms to extend out in front of you.',
                        direction3:
                            'Hinging at your hips and bending your knees, lower back and down until your bottom touches the chair, allowing your arms to extend out in front of you.',
                        context: context,
                        screenheight: screenheight,
                        screenwidth: screenwidth,
                        exerciseName: 'Chair squat',
                        imagePath: 'assets/gif/Chair squat.gif'),
                    inkwellExerciseImageContainer(
                        describe:
                            'A beginner-style pushup, this move will help you build strength before attempting a standard pushup.',
                        direction1:
                            'Get into a high plank position from your knees.',
                        direction2:
                            'Maintaining a straight line from your head to your knees, bend your elbows to lower yourself down to the ground. Keep your elbows at a 45-degree angle.',
                        direction3: 'Push back up to start.',
                        context: context,
                        screenheight: screenheight,
                        screenwidth: screenwidth,
                        exerciseName: 'Knee pushup',
                        imagePath: 'assets/gif/Knee pushup.gif'),
                    inkwellExerciseImageContainer(
                        describe:
                            'Hit your quads, hamstrings, and glutes with a stationary lunge.',
                        direction1:
                            'Split your stance with your right leg in front. Your right foot should be flat on the ground, and your left foot should be up on its toes.',
                        direction2:
                            'Bend your knees and lunge, stopping when your right thigh is parallel to the ground.',
                        direction3:
                            'Push up through your right foot to return to the starting position. Repeat for desired number of reps, then switch legs.',
                        context: context,
                        screenheight: screenheight,
                        screenwidth: screenwidth,
                        exerciseName: 'Stationary lunge',
                        imagePath: 'assets/gif/Stationary lunge.gif'),
                    inkwellExerciseImageContainer(
                        describe:
                            'This move will test your upper body, especially your shoulders. Who says you need weights for a shoulder workout?',
                        direction1:
                            'Get into a high plank position, with your hands stacked underneath your shoulders and your feet close together.',
                        direction2:
                            'Keeping your core engaged and your hands and feet stationary, pike your hips up and back into the Downward Dog pose. Your body should form a triangle with the ground. Keep your neck neutral. Your gaze should be directed toward your feet.',
                        direction3:
                            'Hold here for a second, then return to the plank. Repeat.',
                        context: context,
                        screenheight: screenheight,
                        screenwidth: screenwidth,
                        exerciseName: 'Plank to Downward Dog',
                        imagePath: 'assets/gif/Plank to Downward Dog1.gif'),
                    inkwellExerciseImageContainer(
                        describe: 'Build those glutes with donkey kicks.',
                        direction1:
                            'Get on all fours, with your hands aligned with your shoulders and your knees aligned with your hips.',
                        direction2:
                            'Keeping your back straight, push your right foot out to the imaginary wall behind you while keeping your leg straight.',
                        direction3:
                            'Your foot should remain flexed (toes pointing down to the floor) throughout. Take care to keep your hips square to the ground. Squeeze your buttocks at the top.',
                        context: context,
                        screenheight: screenheight,
                        screenwidth: screenwidth,
                        exerciseName: 'Straight-leg donkey kick',
                        imagePath:
                            'assets/gif/Straight-leg donkey kick (2).gif'),
                    inkwellExerciseImageContainer(
                        describe:
                            'A full-body move that requires balance and stability, the Bird Dog pose is easily scalable to your ability level. Start with this version if you’re a beginner.',
                        direction1:
                            'Get on all fours, ensuring your hands are directly underneath your shoulders and your knees are underneath your hips.',
                        direction2:
                            'Keeping your neck neutral, simultaneously extend your left arm and right leg, keeping your hips square to the ground. Pause here for 2 seconds.',
                        direction3:
                            'Return to the start position. Repeat with your right arm and left leg.',
                        context: context,
                        screenheight: screenheight,
                        screenwidth: screenwidth,
                        exerciseName: 'Bird Dog',
                        imagePath: 'assets/gif/Bird Dog (2).gif'),
                    inkwellExerciseImageContainer(
                        describe:
                            'A full-body exercise that requires strength and balance, planks put the core into overdrive.',
                        direction1:
                            'Assume a plank position on your forearms. Your body should form a straight line from head to feet.',
                        direction2:
                            'Ensure your lower back and hips don’t sag. Hold the position for 30 seconds to 1 minute.',
                        direction3: '',
                        context: context,
                        screenheight: screenheight,
                        screenwidth: screenwidth,
                        exerciseName: 'Forearm plank',
                        imagePath: 'assets/gif/Forearm plank2.gif'),
                    inkwellExerciseImageContainer(
                        describe:
                            'You may not think about strengthening your hip muscles until they start to bother you, but please reconsider!',
                        direction1:
                            'Lie on your left side, with your left leg straight, right leg straight, and right foot resting on the ground.',
                        direction2:
                            'Lift your right leg up, maintaining the position of your body. Make sure your hips don’t open up.',
                        direction3:
                            'Return to the start position. Repeat for the desired number of reps, then do the other side.',
                        context: context,
                        screenheight: screenheight,
                        screenwidth: screenwidth,
                        exerciseName: 'Side-lying hip abduction',
                        imagePath: 'assets/gif/Side-lying hip abduction.webp'),
                    inkwellExerciseImageContainer(
                        describe:
                            'Although you’ll work your core with almost all of these strength exercises, a targeted ab move doesn’t hurt.',
                        direction1:
                            'Lie on your back and bring your legs to a tabletop position. Bend your elbows, and put your hands behind your head.',
                        direction2:
                            'Crunch up and bring your right elbow to your left knee, straightening your right leg.',
                        direction3:
                            'Release the crunch slightly. Bend your right leg and straighten your left leg, then bring your left elbow to your right knee.',
                        context: context,
                        screenheight: screenheight,
                        screenwidth: screenwidth,
                        exerciseName: 'Bicycle crunch',
                        imagePath: 'assets/gif/Bicycle crunch.gif'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
