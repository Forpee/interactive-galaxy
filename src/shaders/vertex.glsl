varying vec2 vUv;
attribute vec3 pos;

void main()
{
    // vec4 mvPosition=modelViewMatrix*vec4(position,1.);
    // gl_PointSize=10.*(1./-mvPosition.z);
    vec3 finalPosition= pos+ position*0.1;

    vec3 particle_position = (modelMatrix*vec4(pos, 1.)).xyz;

    vec4 view_pos = viewMatrix*vec4(particle_position, 1.);

    view_pos.xyz += position*0.1;

    // vec4 view_pos = modelMatrix*vec4(pos, 1.);
    // gl_Position=projectionMatrix*modelMatrix*viewMatrix*vec4(finalPosition,1.);
    gl_Position = projectionMatrix*view_pos;
    vUv=uv;
}