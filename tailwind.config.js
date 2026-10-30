module.exports = {
  content: ['./index.html'],
  theme: {
    extend: {
      colors: {
        crimson: { DEFAULT: '#B21F24', dark: '#8E181C', light: '#E0484D' },
        ink: { DEFAULT: '#111827', 2: '#1F2937' },
        paper: '#F9FAFB'
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', '-apple-system', 'Segoe UI', 'Roboto', 'Helvetica Neue', 'Arial', 'sans-serif']
      }
    }
  }
}
