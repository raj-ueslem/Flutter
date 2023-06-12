import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum TtsState { playing, stopped, paused, continued }

class _MyHomePageState extends State<MyHomePage> {
  final FlutterTts _flutterTts = FlutterTts();
  late TtsState _ttsState;
  double _volume = 1;

  Widget _textFieldSpeak() => Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          decoration: const InputDecoration(
            labelText: "Digite alguma coisa...",
            labelStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(),
          ),
          style: const TextStyle(color: Colors.black, fontSize: 18),
          textAlign: TextAlign.center,
          onSubmitted: (text) => _speak(text),
        ),
      );

  Widget _buttonSpeak() => ElevatedButton(
        onPressed: () => _speak("Oiee, eu sou o Raj"),
        child: const Text('Clique para falar'),
      );
  Widget _buttonStopSpeak() => ElevatedButton(
        onPressed: () => _stop(),
        child: const Text('Clique para parar falar'),
      );

  Widget _volumeSet() => Slider(
        value: _volume,
        min: 0.0,
        max: 1.0,
        divisions: 10,
        label: "Volume: $_volume",
        onChanged: (newVolume) {
          setState(() {
            _volume = newVolume;
          });
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          _textFieldSpeak(),
          _buttonSpeak(),
          _buttonStopSpeak(),
          _volumeSet()
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _ttsState = TtsState.stopped;
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future _speak(String message) async {
    await _flutterTts.setVolume(_volume);
    if (await _flutterTts.speak(message)) {
      setState(() {
        _ttsState = TtsState.playing;
      });
    }
  }

  Future _stop() async {
    if (await _flutterTts.stop()) {
      setState(() {
        _ttsState = TtsState.stopped;
      });
    }
  }
}
