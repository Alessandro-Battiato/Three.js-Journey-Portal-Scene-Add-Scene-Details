void main() {
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;

    // gl_Pointsize is not needed since we are not dealing with points but a classic geometry
    gl_Position = projectionPosition;
}