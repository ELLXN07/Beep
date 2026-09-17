# Beep

Real-time audio effects for YouTube and browser tabs.

**[🌐 Website](https://ellxnbeep.netlify.app/)** • **[📥 Download](https://github.com/ELLXN07/beep/releases/latest)** • **[📖 Documentation](#usage)**


## Features

- **10-Band Equalizer** - Precision control from 31Hz to 16kHz
- **Spatial Environments** - Next Room, Bathroom, Vintage Radio
- **Ambient Sounds** - Rain, Thunder, Forest, Fireplace, Beach, Airplane, and more
- **Audio Effects** - Bass Boost, Treble, Reverb, Stereo Width, Compressor
- **Preset Library** - Bass Boost, Vocal, Rock, Pop, Cinema, Gaming, Night, Podcast
- **Real-time Processing** - Zero-latency audio effects using Web Audio API
- **Persistent Audio** - Effects continue even when popup is closed
- **Privacy First** - All processing happens locally, no data collected

## Installation

### From Source

1. Clone or download this repository
2. Install dependencies:
   ```bash
   npm install
   ```
3. Build the extension:
   ```bash
   npm run build
   ```
4. Open Chrome and go to `chrome://extensions`
5. Enable **Developer mode** (top right)
6. Click **Load unpacked** and select the `dist` folder

## Usage

1. Navigate to a YouTube video or any tab with audio
2. Click the Beep extension icon in your toolbar
3. Click **Start Processing** to capture tab audio
4. Adjust EQ, effects, and ambient sounds to your preference
5. Close the popup - audio continues processing in the background

## Development

```bash
# Install dependencies
npm install

# Build for production
npm run build

# Development mode with hot reload
npm run dev
```

## Building for Distribution

```bash
# Windows
.\build-dist.bat

# Mac/Linux
./build-dist.sh
```

This creates a `dist-landing` folder with:
- `index.html` - Landing page
- `beep-extension.zip` - Downloadable extension package

## Tech Stack

- React 19
- TypeScript
- Vite
- Tailwind CSS
- Web Audio API
- Chrome Extensions Manifest V3

## Project Structure

```
beep-app/
├── src/
│   ├── audio/
│   │   ├── AudioEngine.ts    # Web Audio API processing
│   │   └── Presets.ts        # EQ presets and defaults
│   ├── components/
│   │   ├── Equalizer.tsx     # 10-band EQ UI
│   │   ├── EffectControls.tsx
│   │   ├── SpacesLayout.tsx  # Spatial environments
│   │   ├── AudioVisualizer.tsx
│   │   └── ...
│   ├── hooks/
│   │   └── useAudio.ts       # Audio state management
│   ├── background.ts         # Service worker
│   ├── offscreen.ts          # Offscreen document for audio
│   └── App.tsx
├── public/
│   ├── sounds/               # Ambient sound files
│   └── manifest.json
├── landing/
│   └── index.html            # Landing page
└── dist/                     # Built extension
```

## How It Works

Beep uses Chrome's `tabCapture` API to capture audio from the active tab. The audio is processed through a Web Audio API chain in an offscreen document, allowing effects to persist even when the popup is closed.

```
Tab Audio → tabCapture → Offscreen Document → Web Audio API → EQ/Effects → Speakers
```

## Permissions

- `tabCapture` - Capture audio from browser tabs
- `activeTab` - Access the current tab
- `tabs` - Mute/unmute tabs
- `offscreen` - Process audio in background

## License

MIT

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

---

Made with ♪ by the Beep team
