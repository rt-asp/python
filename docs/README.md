# rtasp
rtasp.rtasp.com

# rtasp

rtasp is a lightweight programming language embedded in Markdown that runs across multiple platforms including web browsers, terminal environments, desktop applications, and mobile devices.

## What is rtasp?

rtasp allows you to write both documentation and executable code in the same Markdown file. Code blocks tagged with ```rtasp are interpreted and executed by the rtasp runtime.

## Key Features

- **Write Once, Run Anywhere**: The same rtasp code works across all supported platforms
- **Embedded in Markdown**: Combine documentation and executable code in a single file
- **Platform-Specific APIs**: Access platform capabilities like file system, device sensors, etc.
- **Interactive Documents**: Create dynamic, interactive documentation
- **Easy to Learn**: Familiar JavaScript-like syntax

## Platform Implementation Guide

### Browser Implementation

The browser implementation uses JavaScript to interpret and execute rtasp code. It consists of:

1. An HTML file that provides the editor interface
2. A JavaScript interpreter that extracts code blocks and executes them
3. DOM manipulation capabilities for UI rendering

**Running in Browser:**
1. Open `index.html` in any modern browser
2. Write your rtasp code in the editor
3. Click "Run" to execute

