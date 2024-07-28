uniform float uPixelRatio;
uniform float uSize;

attribute float aScale;

void main() {
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;

    gl_Position = projectionPosition;
    
    gl_PointSize = uSize * aScale * uPixelRatio; // this fixes the different devices' pixel density so 40 px is going to be 40 for all of the resolutions
    gl_PointSize *= (1.0 / - viewPosition.z); // particles now resize accordingly to camera distance
}