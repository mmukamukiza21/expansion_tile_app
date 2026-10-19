// ExpansionTile demo: Student Hub FAQ (colored version)
// ExpansionTile is a list row that expands and collapses to show more content.

import 'package:flutter/material.dart';

void main() => runApp(const FaqApp());

class FaqApp extends StatelessWidget {
  const FaqApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ExpansionTile Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
        useMaterial3: true,
        // Soft tinted page background so the white cards stand out.
        scaffoldBackgroundColor: const Color(0xFFF2F7F6),
      ),
      home: const FaqScreen(),
    );
  }
}

// One FAQ entry: an icon, a question and an answer.
class Faq {
  final IconData icon;
  final String question;
  final String answer;
  const Faq(this.icon, this.question, this.answer);
}

const List<Faq> faqs = [
  Faq(Icons.how_to_reg, 'How do I register for the program?',
      'Create an account, fill in your profile, then submit the registration form from the Home tab.'),
  Faq(Icons.money_off, 'Is the program free?',
      'Yes. All workshops and mentorship sessions are free for registered students.'),
  Faq(Icons.groups, 'How do I contact a mentor?',
      'Open the Mentors tab, pick a mentor and tap "Request session".'),
  Faq(Icons.calendar_month, 'Where can I find the schedule?',
      'The weekly schedule is under the Calendar tab and updates every Monday.'),
];

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  // Attribute values, starting at ExpansionTile's defaults.
  bool _initiallyExpanded = false;
  bool _useBackgroundColor = false;
  bool _iconOnLeft = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Hub FAQ'),
        backgroundColor: Colors.teal.shade700,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Colorful header banner.
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal.shade700, Colors.teal.shade400],
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Need help?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Tap a question to see the answer.',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Control panel: switches to change the attributes live.
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: [
                SwitchListTile(
                  title: const Text('initiallyExpanded'),
                  subtitle: const Text('Default: false'),
                  value: _initiallyExpanded,
                  onChanged: (v) => setState(() => _initiallyExpanded = v),
                ),
                SwitchListTile(
                  title: const Text('backgroundColor'),
                  subtitle: const Text('Default: null (no tint)'),
                  value: _useBackgroundColor,
                  onChanged: (v) => setState(() => _useBackgroundColor = v),
                ),
                SwitchListTile(
                  title: const Text('controlAffinity: leading'),
                  subtitle: const Text('Default: trailing'),
                  value: _iconOnLeft,
                  onChanged: (v) => setState(() => _iconOnLeft = v),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // The widget being presented: one ExpansionTile per FAQ.
          ...faqs.map(
            (faq) => Card(
              color: Colors.white,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              child: ExpansionTile(
                // Key forces a rebuild so initiallyExpanded changes live.
                key: ValueKey('${faq.question}-$_initiallyExpanded'),

                // Colored icon next to the question text.
                // (The icon is inside the title, so it never competes with
                // the arrow when controlAffinity moves it to the left.)
                title: Row(
                  children: [
                    Icon(faq.icon, color: Colors.teal.shade600),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        faq.question,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),

                // Attribute 1: starts the tile open or closed.
                initiallyExpanded: _initiallyExpanded,

                // Attribute 2: tile color while expanded.
                // A clear tint, so it is easy to see on a projector.
                backgroundColor:
                    _useBackgroundColor ? Colors.teal.shade100 : null,

                // Attribute 3: arrow on the left (leading) or right (trailing).
                controlAffinity: _iconOnLeft
                    ? ListTileControlAffinity.leading
                    : ListTileControlAffinity.trailing,

                // Colors for the arrow and the title text.
                iconColor: Colors.teal.shade700,
                collapsedIconColor: Colors.teal.shade400,
                textColor: Colors.teal.shade900,

                // Remove the default divider lines for a cleaner look.
                shape: const Border(),
                collapsedShape: const Border(),

                expandedAlignment: Alignment.centerLeft,
                childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                children: [
                  Text(
                    faq.answer,
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}