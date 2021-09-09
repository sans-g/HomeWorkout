import 'package:homeworkoutapp/model/exercise.dart';

const DUMMY_EXERCISES = const [
  Exercise(
    id: 'e1',
    title: 'Band Bent-Over Row',
    categories: ['b5', 'i5', "a5"],
    Steps: [
      'Grab a low-resistance band and set it out on the ground.',
      'Stand on the middle of the band, grabbing the two ends in either hand with a pronated (overhand) grip, hinging at the hips and slightly bending your knees in an athletic stance.',
      'Make sure that your back is not rounded.',
      'Squeeze your back to pull the band ends simultaneously to your chest, or as close as the band allows.',
      'Pause for a moment at the top of the motion, then slowly return to the original position, working against the bands resistance.'
    ],
    reps: 10,
    sets: 4,
    duration: Duration(seconds: 20),
    url: 'assets/exercise/e1.gif',
  ),
  Exercise(
    id: 'e2',
    title: 'Renegade Row',
    categories: ["b5", "a5", 'i5'],
    Steps: [
      'Grab a pair of light dumbbells and about as much space as you would need to perform pushups.',
      'Get in a plank position with your feet spread wide, gripping the dumbbells with your palms facing parallel to each other. ',
      'Make sure that your back is not rounded.',
      'Squeeze your glutes and core to maintain a strong spinal alignment, looking at the floor ahead of you.',
      'Use your lats to row one of the dumbbells to chest height, then return the weight to the ground, keeping the rest of your body balanced in its position.',
      'Control the load up and down the movement — if you have to contort your body and shift your back to lift the dumbbells, drop down to a lower weight.',
      'Perform a pushup, maintaining spinal alignment, and repeat the motion with the opposite arm.'
    ],
    duration: Duration(seconds: 20),
    reps: 10,
    sets: 3,
    url: 'assets/exercise/e2.gif',
  ),
  Exercise(
    id: 'e3',
    title: 'Dumbbell Single Arm Row',
    categories: ['b5', 'a5', 'i5'],
    Steps: [
      'You only need one dumbbell to do the job here.',
      'Place it on the ground next to a bench on the side you are planning to work.',
      'Mount the bench with your weight on your opposite knee and hand, planting the same side leg on the ground.',
      'Bend at the hips, and keep your back straight, picking up the dumbbell with your work hand and allowing it to hang straight down from your shoulder.',
      'Pull the dumbbell up to the side of your torso without rotating your shoulders or losing your balance. Pause for a count at the top before lowering the weight to the starting position.'
    ],
    duration: Duration(seconds: 20),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e3.gif',
  ),
  Exercise(
    id: 'e4',
    title: 'Inverted Row',
    categories: ['a5', 'b5', 'i5'],
    Steps: [
      'Place a bar at about hip height on a Smith machine or power rack. ',
      'Lower yourself to the ground underneath the bar, grabbing it with an overhand grip with your hands positioned directly above your shoulders. ',
      'There should be some space beneath your back and the ground to hang suspended.',
      'You can fully extend your legs and rest your heels on the ground for a challenge, or bend your knees and plant your feet on the ground for an easier rep.',
      'Pull your shoulder blades back to start the rep, then pull up with your arms to lift your chest to the bar.',
      'Keep your wrists stable and maintain a straight line in your spine, squeezing your glutes.',
      'Touch your chest to the bar before straightening your arms to return to the starting position.'
    ],
    duration: Duration(seconds: 20),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e4.gif',
  ),
  Exercise(
    id: 'e5',
    title: 'Bent-Over Dumbbell Alternating Row',
    categories: ['b5', 'a5', 'i5'],
    Steps: [
      'Grab a pair of dumbbells, hinge at your hips and knees, and lower your torso until it’s almost parallel to the floor.',
      'Your feet should be shoulder-width apart, and your lower back should be naturally arched; just make sure to avoid rounding your lower back.',
      'Let the dumbbells hang at arm’s length from your shoulders with your palms facing each other.',
      'Keeping your position, lift one dumbbell to your side, pause at the top of the movement, and slowly lower it.',
      'Then repeat with your other arm.'
    ],
    duration: Duration(seconds: 20),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e5.gif',
  ),
  Exercise(
    id: 'e6',
    title: 'Bent-Over Barbell Rows',
    categories: ['b5', 'i5', 'a5'],
    Steps: [
      'Grab the barbell with an overhand grip, holding your hands just further than shoulder width apart.',
      'Hinge at the hips and knees and lower your torso until it’s almost parallel to the floor.',
      'Keep your back naturally arched, and make sure to avoiding rounding.',
      'Pull the bar to your upper abs and squeeze your shoulder blades toward each other.',
      'Pause, then slowly lower the bar back to the starting position.'
    ],
    duration: Duration(seconds: 20),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e6.gif',
  ),
  Exercise(
    id: 'e7',
    title: 'Bent-Over Underhand Barbell Row',
    categories: ['a5', 'b5', 'i5'],
    Steps: [
      'Grab a barbell with an underhand grip that’s just beyond shoulder width, and hold it at arm’s length.',
      ' Lower your torso until it’s almost parallel to the floor, and bend at your hips and knees.',
      'Let the bar hang at arm’s length. Pull the bar to your upper abs as you squeeze your shoulder blades together.',
      'Pause, and slowly lower the bar back to the starting position.'
    ],
    duration: Duration(seconds: 20),
    reps: 20,
    sets: 3,
    url: 'assets/exercise/e7.gif',
  ),
  Exercise(
    id: 'e8',
    title: 'Seated Cable Row w/ Pause',
    categories: ['b5', 'i5', 'a5'],
    Steps: [
      'Attach a straight bar to a cable station and position yourself with your feet braced.',
      'Grab the bar using an overhand, shoulder-width grip, and sit upright.',
      'Pull the bar to your upper abs. Pause for three seconds, then slowly lower your body back to the starting position.',
      'Do not lean forward and backward to perform the exercise.'
    ],
    duration: Duration(seconds: 50),
    reps: 30,
    sets: 3,
    url: '',
  ),
  Exercise(
    id: 'e9',
    title: 'Pullup or Chinup Variations',
    categories: ['b5', 'i5', 'a5'],
    Steps: [
      'Grab the bar with a shoulder-width underhand grip.',
    ],
    duration: Duration(seconds: 45),
    reps: 10,
    sets: 3,
    url: 'assets/exercise/e9.gif',
  ),
  Exercise(
    id: 'e10',
    title: 'Lat Pulldown',
    categories: ['b5', 'i5', 'a5'],
    Steps: [
      'Sit down at a lat pulldown station and grab the bar with an overhand grip that is just beyond shoulder width.',
      'Without moving your torso, pull your shoulders back and down, and bring the bar down to your chest.',
      'Pause, then slowly return to the starting position.',
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 2,
    url: 'assets/exercise/e10.gif',
  ),

  Exercise(
    id: 'e11',
    title: 'Front Squat',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Set a barbell on a power rack at about shoulder height.',
      'Grab the power with an overhand grip at shoulder width and raise your elbows until your upper arms are parallel to the floor. Take the bar out of the rack and let it rest on your fingertips.',
      'Your elbows should be all the way up throughout the movement.',
      'Step back and set your feet at shoulder width with toes turned out slightly.',
      'Squat as low as you can without losing the arch in your lower back.'
    ],
    duration: Duration(seconds: 50),
    reps: 10,
    sets: 3,
    url: 'assets/exercise/e8.gif',
  ),
  Exercise(
    id: 'e13',
    title: 'Bulgarian Split Squat',
    Steps: [
      'Stand lunge-length in front of a bench.',
      'Hold a dumbbell in each hand and rest the top of your left foot on the bench behind you.',
      'Lower your body until your rear knee nearly touches the floor and your front thigh is parallel to the floor.',
      'Single-leg training can yield serious strength gains.'
    ],
    categories: ['a4', 'i4', 'b4'],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e13.gif',
  ),
  Exercise(
    id: 'e14',
    title: 'Romanian Deadlift',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'A killer deadlift variation, hold a barbell with a shoulder-width grip and stand with feet hip-width apart.',
      'Bend your hips back as far as you can.',
      'Allow your knees to bend as needed while you lower the bar along your shins until you feel a stretch in your hamstrings.',
      'Keep your lower back in its natural arched position throughout.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e14/gif',
  ),
//e15
  Exercise(
    id: 'e16',
    title: 'Dumbbell Stepup',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Stand behind a bench or another elevated surface that will put your thigh at parallel to the floor when you step your foot onto it.',
      'Hold a dumbbell in each hand and step onto the bench, but leave your trailing leg hanging off.'
    ],
    duration: Duration(seconds: 50),
    reps: 20,
    sets: 3,
    url: 'assets/exercise/e16.gif',
  ),
  Exercise(
    id: 'e17',
    title: 'Deadlift',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Stand straight up with feet hip-width apart and shins one inch away from the bar.',
      ' Grip the bar with a double pronated or reverse grip, bend knees and push them into your straight arms.',
      'Bring your chest up as much as possible and look straight ahead.',
      ' Keeping your back flat, extend your hips to stand up, pulling the bar up along your legs to lockout.'
    ],
    duration: Duration(seconds: 50),
    reps: 20,
    sets: 3,
    url: 'assets/exercise/e17.gif',
  ),
  Exercise(
    id: 'e18',
    title: 'Swiss Ball Leg Curl',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Brace your abs with heels on a stability ball.',
      ' Raise your hips into the air, but keep your knees straight.',
      ' From there, bend your knees and roll the ball back toward you.',
      ' Keep your hips elevated throughout the set.',
      'Check out more Swiss-Ball moves that’ll torch your glutes and legs.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-_TZ8S01o3FjW0fKzWM3m0tION6zqWRAWJFloqYQSCagoB2-C&s',
  ),
  Exercise(
    id: 'e19',
    title: 'Single-Leg Romanian Deadlift',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Hold a dumbbell in one hand and stand on the opposite leg.',
      ' Bend your hips back and lower your torso until you feel your lower back is about to lose its arch. ',
      'Squeeze your glutes and extend your hips to come up.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e19.gif',
  ),
  Exercise(
    id: 'e20',
    title: 'Leg Press',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Adjust the seat of the machine so that you can sit comfortably with your hips beneath your knees and your knees in line with your feet.',
      'Remove the safeties and lower your knees toward your chest until they’re bent 90 degrees and then press back up.',
      'Be careful not to go too low or you risk your lower back coming off the seat (which can cause injury).'
    ],
    duration: Duration(seconds: 50),
    reps: 10,
    sets: 4,
    url: '',
  ),
  Exercise(
    id: 'e21',
    title: 'Bodyweight Calf Raise',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Stand with your toes on the block and hold onto something sturdy for support.',
      'Raise your heels to come up on the balls of your feet, and then lower your heels until you feel a stretch in your calves.',
      'This is just one way to get stronger, bigger calves.'
    ],
    duration: Duration(seconds: 50),
    reps: 25,
    sets: 3,
    url: 'assets/exercise/e21.gif',
  ),
  Exercise(
    id: 'e22',
    title: 'Walking Lunge',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Stand with your feet hip width, holding a dumbbell in each hand.',
      'Step forward with one leg and lower your body until your rear knee nearly touches the floor and your front thigh is parallel to the floor.',
      'Step forward with your rear leg to perform the next rep.'
    ],
    duration: Duration(seconds: 50),
    reps: 20,
    sets: 3,
    url: 'assets/exercise/e22.gif',
  ),
  Exercise(
    id: 'e23',
    title: 'Pause Squat',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Set up in a squat rack or cage.',
      'Grasp the bar as far apart as is comfortable and step under it.',
      'Squeeze your shoulder blades together and nudge the bar out of the rack.',
      'Step back and stand with your feet at shoulder width and your toes turned out slightly.',
      ' Take a deep breath and tuck your hips back, then bend your knees to lower your body as far as you can without losing the arch in your lower back.',
      'Push your knees out as you descend.',
      'Hold the bottom position for two seconds.'
    ],
    duration: Duration(seconds: 50),
    reps: 20,
    sets: 3,
    url: 'assets/exercise/e23.gif',
  ),
  Exercise(
    id: 'e24',
    title: 'Reverse Lunge',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Stand with the dumbbells still in your hands and step back with your right foot.',
      'Lower your body until your front thigh is parallel to the floor and your rear knee nearly touches the floor.',
      ' Keep your torso upright.',
      'Step forward to return to the starting position.',
      'Complete all reps on one leg, then switch legs.'
    ],
    duration: Duration(seconds: 50),
    reps: 25,
    sets: 3,
    url: 'assets/exercise/e24.gif',
  ),
  Exercise(
    id: 'e25',
    title: 'Dumbbell Squat',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Hold the weights at shoulder level and stand with feet shoulder-width apart and toes turned slightly out.',
      'Squat down as low as you can without losing the arch in your lower back.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e25.gif',
  ),
  Exercise(
    id: 'e26',
    title: 'Kettlebell Swing',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Stand with feet hip-width apart and the kettlebell on the floor.',
      'Grasp the weight with both hands (palms facing you) and, keeping your lower back flat, extend your hips to raise it off the floor.',
      'From there, take a deep breath and bend your hips back, allowing the weight to swing back between your legs.',
      ' Explosively extend your hips and exhale—allowing the momentum to swing the weight up to shoulder level.',
      'Control the descent, but use the momentum to begin the next rep.'
    ],
    duration: Duration(seconds: 50),
    reps: 20,
    sets: 3,
    url: 'assets/exercise/e26/gif',
  ),
  Exercise(
    id: 'e27',
    title: 'Jump Squat',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Stand with feet shoulder-width apart and squat down until your thighs are about parallel to the floor but no deeper.',
      'Jump as high as you can. Land with soft knees and begin the next rep.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e27.gif',
  ),
  Exercise(
    id: 'e28',
    title: 'Barbell Calf Raise',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Place a block, step, or weight plate on the floor.',
      'Grasp a barbell and hold it on the backs of your shoulders, as in a squat.',
      'Place your toes on the block so your calves are stretched, but make sure you can maintain balance.',
      'Raise your heels to come up onto the balls of your feet.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e28.gif',
  ),
  Exercise(
    id: 'e29',
    title: 'Kneeling Hip Flexor Stretch',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Kneel down in a lunge position with your right leg in front, and rest your back knee on a towel or mat, if available.',
      ' Extend your left hand above your head and let your right hand hang at your side.',
      'Contract your left glute and push your hips forward until you feel a stretch in the front of your hip. Hold for 30 seconds.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: '',
  ),
  Exercise(
    id: 'e30',
    title: 'Skater Squat',
    categories: ['a4', 'i4', 'b4', '4mt'],
    Steps: [
      'Stand on your right leg and pick your left one up off the floor.',
      'Raise both arms in front of you to act as a counterbalance.',
      'If you have light weights or something similar to help you keep your balance, use it.',
      'Bend your hips and knee and lower your body as low as you can.',
      'Come back up.'
    ],
    duration: Duration(seconds: 50),
    reps: 10,
    sets: 3,
    url: '',
  ),
  Exercise(
    id: 'e31',
    title: 'Jumping Calf Raise',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Stand tall with feet flat on the floor and jump using only your calves.',
      'Land softly, absorbing the force by dropping into a half squat; also, try to land quietly.'
    ],
    duration: Duration(seconds: 50),
    reps: 20,
    sets: 3,
    url: '',
  ),
  Exercise(
    id: 'e32',
    title: 'Barbell Hip Thrust',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Rest your upper back on a bench and sit on the floor with legs extended.',
      'Roll a loaded barbell up your thighs until the bar sits on your lap (you may want to place a towel or mat on your hips or attach a pad to the bar for comfort).',
      'Brace your abs and drive your heels into the floor to extend your hips, raising them until your thighs and upper body are parallel to the floor.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e32.gif',
  ),
  Exercise(
    id: 'e33',
    title: 'Glute Bridge Walkout',
    categories: ['a4', 'i4', 'b4', '4mt'],
    Steps: [
      'Lie on your back on the floor and bend your knees so your feet rest on the floor close to your butt.',
      'Brace your abs and drive your heels into the floor to raise your hips into the air.',
      'From there, walk your feet out in a V shape, taking small steps with your heels forward and away from the midline of your body.',
      'Keep your hips up.',
      'Continue until your legs are extended and then walk them back in. That’s one rep.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: '',
  ),
  Exercise(
    id: 'e34',
    title: 'Single-Leg Glute Bridge',
    categories: ['a4', 'i4', 'b4', '4mt'],
    Steps: [
      'Lie on your back on the floor and bend both knees so that your feet rest on the floor close to your butt.',
      'Brace your abs and raise one leg up and bring the knee toward your chest.',
      'Drive the heel of the other foot into the floor. Bridge up until your body is in a straight line.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e34.gif',
  ),
  Exercise(
    id: 'e35',
    title: 'Seated Calf Raise',
    categories: ['a4', 'i4', 'b4', 'pfy1', 'pfy3', 'pfy2'],
    Steps: [
      'Use a seated calf raise machine, or sit on a bench and rest the balls of your feet on a block or step (and hold dumbbells on your thighs for resistance).',
      'Perform a calf raise as described at left, but with hips and knees bent 90 degrees.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e35.gif',
  ),
  Exercise(
    id: 'e36',
    title: 'Swiss Ball Wall Squat',
    categories: ['a4', 'i4', 'b4', 'pfy1', 'pfy3', 'pfy2'],
    Steps: [
      'Place the ball against a wall and stand with your back against it, holding it in place.',
      'Place your feet shoulder-width apart and turn your toes out about 15 degrees.',
      'Squat down as low as you can, rolling the ball down the wall as you descend.'
    ],
    duration: Duration(seconds: 50),
    reps: 1,
    sets: 3,
    url: '',
  ),
  Exercise(
    id: 'e37',
    title: 'Reverse Table-Up',
    categories: ['a4', 'i4', 'b4', 'pfy1', 'pfy3', 'pfy2'],
    Steps: [
      'Sit on the floor and place your hands on the floor under your shoulders, fingers pointing in front of you.',
      'Place your feet shoulder width and squeeze your glutes.',
      'Push through your heels as you bridge your hips up.',
      'Your body should form a table, with your torso and hips parallel to the floor. Hold for two seconds.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e37.jpg',
  ),
  Exercise(
    id: 'e38',
    title: 'Kettlebell Press-Out',
    categories: ['a4', 'i4', 'b4', 'pfy1', 'pfy3', 'pfy2'],
    Steps: [
      'Hold the weight close to your chest at shoulder level with both hands on the handle and palms facing each other.',
      'Squat down as deeply as you can, then press the bell straight out in front of you with arms extended.',
      'Bring it back to your chest and repeat for reps while maintaining the squat position.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: '',
  ),
  Exercise(
    id: 'e39',
    title: 'Suspension Trainer Leg Curl',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Rest both feet in the foot cradles of a suspension traner with legs straight.',
      'Bridge your hips up so your body forms a straight line, then bend your knees, curling your heels toward your butt.',
      'The closer you place your hands to your sides, the more support you’ll get.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e39.gif',
  ),
  Exercise(
    id: 'e40',
    title: 'Overhead Lunge',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Hold the bar overhead and step forward with your left leg.',
      ' Lower yourself until your left thigh is parallel to the floor and your rear knee nearly touches the floor.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: '', //same exercise
  ),
  Exercise(
    id: 'e41',
    title: 'Standing Calf Raise',
    categories: ['a4', 'i4', 'b4'],
    Steps: [
      'Use a standing calf raise machine, or stand on a block or step with a dumbbell in one hand while holding on to something for support with the other.',
      'Lower your heels toward the floor until you feel a stretch in your calves.',
      'Drive the balls of your feet into the foot plate and contract your calves, raising your heels as high as possible. Control the descent on each rep.'
    ],
    duration: Duration(seconds: 50),
    reps: 20,
    sets: 3,
    url: '',
  ),
  Exercise(
    id: 'e42',
    title: 'Hammer Curl',
    categories: ['b3', 'i3', 'a3'],
    Steps: [
      'Hold a dumbbell in each hand with palms facing your sides and arms extended straight down.',
      'Keeping your upper arms against your sides, curl both weights at the same time, minimizing momentum used during the curl.'
    ],
    duration: Duration(seconds: 50),
    reps: 20,
    sets: 3,
    url: 'assets/exercise/e42.gif',
  ),
  Exercise(
    id: 'e43',
    title: 'Dip',
    categories: ['b3', 'i3', 'a3'],
    Steps: [
      'Use dip bars, if available, or place your palms on a bench, chair, or on the floor as you extend your legs in front of you.',
      ' Lower your body until your upper arms are parallel to the floor, but no lower. Extend your elbows to come up.'
    ],
    duration: Duration(seconds: 50),
    reps: 25,
    sets: 3,
    url: 'assets/exercise/e43.gif',
  ),
  Exercise(
    id: 'e44',
    title: 'Close-Grip Curl',
    categories: ['b3', 'i3', 'a3'],
    Steps: [
      'Curl with your hands inside shoulder width, in the middle of the bar. '
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: 'assets/exercise/e44.gif',
  ),
  Exercise(
    id: 'e45',
    title: 'Chinup',
    categories: ['b3', 'i3', 'a3'],
    Steps: [
      'Grab the bar at (or slightly inside) shoulder width, with a supinated grip.',
      'While keeping core tight, pull yourself up until your chin is over the bar.',
      'Try not to use momentum to get your chin over the bar.'
    ],
    duration: Duration(seconds: 50),
    reps: 20,
    sets: 3,
    url: 'assets/exercise/e45.gif',
  ),
  Exercise(
    id: 'e46',
    title: 'Suspension Trainer Triceps Extension',
    categories: ['b3', 'i3', 'a3'],
    Steps: [
      'Lengthen the straps and stand underneath the suspension trainer’s anchor point.',
      ' Lean your weight forward and bend your elbows so you feel a stretch in your triceps.',
      '. Your palms should face each other behind your head.',
      'Keeping your body straight and abs braced, extend elbows, rotating palms so they face down while extended.'
    ],
    duration: Duration(seconds: 50),
    reps: 25,
    sets: 3,
    url: '',
  ),
  Exercise(
    id: 'e47',
    title: 'Diamond Pushup',
    categories: ['b3', 'i3', 'a3'],
    Steps: [
      'Get into pushup position but place your hands close together so your thumbs and index fingers touch.',
      ' Keeping your body in a straight line with abs braced, lower your torso until your chest is just above the floor, then press back up.'
    ],
    duration: Duration(seconds: 50),
    reps: 15,
    sets: 3,
    url: 'assetes/exercise/e47.gif',
  ),
  Exercise(
    id: 'e48',
    title: 'Neutral-Grip Triceps Extension',
    categories: ['b3', 'i3', 'a3'],
    Steps: [
      'Lie back on a bench or the floor holding a dumbbell in each hand with palms facing each other.',
      'Press the weights over your chest, then bend your elbows to lower the weights toward your face until you feel a stretch in your triceps.',
      'Extend your elbows. Keep your elbows facing the ceiling the entire set.'
    ],
    duration: Duration(seconds: 50),
    reps: 10,
    sets: 3,
    url: '',
  ),
  Exercise(
    id: 'e49',
    title: 'Poundstone Curl',
    categories: ['b3', 'i3', 'a3'],
    Steps: [
      'Grasp the barbell at shoulder width. Keeping your upper arms at your sides, curl the bar.'
    ],
    duration: Duration(seconds: 50),
    reps: 20,
    sets: 3,
    url: 'assetes/exercise/e49.gif',
  ),
  Exercise(
    id: 'e50',
    title: 'Suspension Trainer Rotational Inverted Row',
    categories: ['b3', 'i3', 'a3'],
    Steps: [
      'Hold the handles and lean back with arms extended so that your body is supported by the suspension trainer and only your feet are on the floor.',
      'Brace your core and hold your body in a straight line. (The lower you set the handles, the harder the exercise; you can elevate your feet to make it even more difficult.)',
      'Start with your palms facing your feet, and as you row your body up, twist your wrists out so your palms face up in the top position.'
    ],
    duration: Duration(seconds: 50),
    reps: 30,
    sets: 3,
    url: 'assets/exercise/e50.gif',
  ),
];
