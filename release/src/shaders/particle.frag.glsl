varying float fColorPacked;

#inject /release/src/shaders/chunks/FloatPack.glsl

void main() {
    if (fColorPacked < 0.0) {
      gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
      discard;
    /*} else if (fColorPacked > 1.0) {
      gl_FragColor = vec4(0.0, 0.0, 1.0, 1.0);*/
      /*discard;*/
    } else {
      gl_FragColor = vec4(vec3(1.0), 1.0);
    }
    /*gl_FragColor = vec4(floatToVec4(fColorPacked).rgb, 1.0);*/
}