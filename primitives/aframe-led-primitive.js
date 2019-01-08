AFRAME.registerComponent('blinking', {
  schema: {
    color: { default: '#ff0000' },
    dutyCycle: { default: 0.5 },
    frequency: { default: 0.8 },
    brightness: { default: 1 }
  },
  update: function (oldData) {
    const dutyCycle = Math.min(1, Math.max(0, this.data.dutyCycle))
    this.onDuration = 1 / this.data.frequency * dutyCycle
    this.offDuration = 1 / this.data.frequency * (1 - dutyCycle)
    console.log(this)
  }
})

AFRAME.registerPrimitive('a-led', {
  dependencies: ['animation'],
  defaultComponents: {
    geometry: { primitive: 'sphere', radius: '0.0025' },
    material: {
      color: '#440000',
      shader: 'standard',
      emissive: '#ff0000',
      emissiveIntensity: 0
    },
    animation__blinkmaterial: {
      property: 'components.material.material.emissiveIntensity',
      dur: 3500,
      easing: 'easeInOutExpo',
      from: 1,
      to: 0,
      loop: true
    },
    animation__blinklight: {
      property: 'components.light.light.intensity',
      dur: 3500,
      easing: 'easeInOutExpo',
      from: 0.5,
      to: 0,
      loop: true
    },
    light: {
      type: 'spot',
      intensity: 0,
      color: '#ff0000',
      angle: 10,
      distance: 5,
      penumbra: 0.5,
    },
    rotation: {
      x: 180
    }
  }
})
