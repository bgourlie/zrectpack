const sg = @import("sokol").gfx;
const std = @import("std");
//
//    #version:1# (machine generated, don't edit!)
//
//    Generated by sokol-shdc (https://github.com/floooh/sokol-tools)
//
//    Overview:
//    =========
//    Shader program: 'quad':
//        Get shader desc: shd.quadShaderDesc(sg.queryBackend());
//        Vertex Shader: vs
//        Fragment Shader: fs
//        Attributes:
//            ATTR_quad_a_pos => 0
//            ATTR_quad_a_instance_pos => 1
//            ATTR_quad_a_instance_size => 2
//            ATTR_quad_a_instance_color => 3
//    Bindings:
//        Uniform block 'vs_params':
//            Zig struct: VsParams
//            Bind slot: UB_vs_params => 0
//
pub const ATTR_quad_a_pos = 0;
pub const ATTR_quad_a_instance_pos = 1;
pub const ATTR_quad_a_instance_size = 2;
pub const ATTR_quad_a_instance_color = 3;
pub const UB_vs_params = 0;
pub const VsParams = extern struct {
    u_proj: [16]f32 align(16),
};
//
//    #version 430
//
//    uniform vec4 vs_params[4];
//    layout(location = 1) in vec2 a_instance_pos;
//    layout(location = 0) in vec2 a_pos;
//    layout(location = 2) in vec2 a_instance_size;
//    layout(location = 0) out vec4 color;
//    layout(location = 3) in vec4 a_instance_color;
//
//    void main()
//    {
//        gl_Position = mat4(vs_params[0], vs_params[1], vs_params[2], vs_params[3]) * vec4(a_instance_pos + (a_pos * a_instance_size), 0.0, 1.0);
//        color = a_instance_color;
//    }
//
//
const vs_source_glsl430 = [442]u8{
    0x23, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x20, 0x34, 0x33, 0x30, 0x0a, 0x0a, 0x75, 0x6e,
    0x69, 0x66, 0x6f, 0x72, 0x6d, 0x20, 0x76, 0x65, 0x63, 0x34, 0x20, 0x76, 0x73, 0x5f, 0x70, 0x61,
    0x72, 0x61, 0x6d, 0x73, 0x5b, 0x34, 0x5d, 0x3b, 0x0a, 0x6c, 0x61, 0x79, 0x6f, 0x75, 0x74, 0x28,
    0x6c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x31, 0x29, 0x20, 0x69, 0x6e,
    0x20, 0x76, 0x65, 0x63, 0x32, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65,
    0x5f, 0x70, 0x6f, 0x73, 0x3b, 0x0a, 0x6c, 0x61, 0x79, 0x6f, 0x75, 0x74, 0x28, 0x6c, 0x6f, 0x63,
    0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x30, 0x29, 0x20, 0x69, 0x6e, 0x20, 0x76, 0x65,
    0x63, 0x32, 0x20, 0x61, 0x5f, 0x70, 0x6f, 0x73, 0x3b, 0x0a, 0x6c, 0x61, 0x79, 0x6f, 0x75, 0x74,
    0x28, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x32, 0x29, 0x20, 0x69,
    0x6e, 0x20, 0x76, 0x65, 0x63, 0x32, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63,
    0x65, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x3b, 0x0a, 0x6c, 0x61, 0x79, 0x6f, 0x75, 0x74, 0x28, 0x6c,
    0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x30, 0x29, 0x20, 0x6f, 0x75, 0x74,
    0x20, 0x76, 0x65, 0x63, 0x34, 0x20, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x6c, 0x61, 0x79,
    0x6f, 0x75, 0x74, 0x28, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x33,
    0x29, 0x20, 0x69, 0x6e, 0x20, 0x76, 0x65, 0x63, 0x34, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74,
    0x61, 0x6e, 0x63, 0x65, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x0a, 0x76, 0x6f, 0x69,
    0x64, 0x20, 0x6d, 0x61, 0x69, 0x6e, 0x28, 0x29, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x67,
    0x6c, 0x5f, 0x50, 0x6f, 0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x6d, 0x61, 0x74,
    0x34, 0x28, 0x76, 0x73, 0x5f, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x73, 0x5b, 0x30, 0x5d, 0x2c, 0x20,
    0x76, 0x73, 0x5f, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x73, 0x5b, 0x31, 0x5d, 0x2c, 0x20, 0x76, 0x73,
    0x5f, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x73, 0x5b, 0x32, 0x5d, 0x2c, 0x20, 0x76, 0x73, 0x5f, 0x70,
    0x61, 0x72, 0x61, 0x6d, 0x73, 0x5b, 0x33, 0x5d, 0x29, 0x20, 0x2a, 0x20, 0x76, 0x65, 0x63, 0x34,
    0x28, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x70, 0x6f, 0x73, 0x20,
    0x2b, 0x20, 0x28, 0x61, 0x5f, 0x70, 0x6f, 0x73, 0x20, 0x2a, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73,
    0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x29, 0x2c, 0x20, 0x30, 0x2e, 0x30,
    0x2c, 0x20, 0x31, 0x2e, 0x30, 0x29, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x63, 0x6f, 0x6c, 0x6f,
    0x72, 0x20, 0x3d, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x63,
    0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x7d, 0x0a, 0x0a, 0x00,
};
//
//    #version 430
//
//    layout(location = 0) out vec4 frag_color;
//    layout(location = 0) in vec4 color;
//
//    void main()
//    {
//        frag_color = color;
//    }
//
//
const fs_source_glsl430 = [135]u8{
    0x23, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x20, 0x34, 0x33, 0x30, 0x0a, 0x0a, 0x6c, 0x61,
    0x79, 0x6f, 0x75, 0x74, 0x28, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20,
    0x30, 0x29, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x76, 0x65, 0x63, 0x34, 0x20, 0x66, 0x72, 0x61, 0x67,
    0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x6c, 0x61, 0x79, 0x6f, 0x75, 0x74, 0x28, 0x6c,
    0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x30, 0x29, 0x20, 0x69, 0x6e, 0x20,
    0x76, 0x65, 0x63, 0x34, 0x20, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x0a, 0x76, 0x6f, 0x69,
    0x64, 0x20, 0x6d, 0x61, 0x69, 0x6e, 0x28, 0x29, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66,
    0x72, 0x61, 0x67, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x20, 0x3d, 0x20, 0x63, 0x6f, 0x6c, 0x6f,
    0x72, 0x3b, 0x0a, 0x7d, 0x0a, 0x0a, 0x00,
};
//
//    #version 300 es
//
//    uniform vec4 vs_params[4];
//    layout(location = 1) in vec2 a_instance_pos;
//    layout(location = 0) in vec2 a_pos;
//    layout(location = 2) in vec2 a_instance_size;
//    out vec4 color;
//    layout(location = 3) in vec4 a_instance_color;
//
//    void main()
//    {
//        gl_Position = mat4(vs_params[0], vs_params[1], vs_params[2], vs_params[3]) * vec4(a_instance_pos + (a_pos * a_instance_size), 0.0, 1.0);
//        color = a_instance_color;
//    }
//
//
const vs_source_glsl300es = [424]u8{
    0x23, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x20, 0x33, 0x30, 0x30, 0x20, 0x65, 0x73, 0x0a,
    0x0a, 0x75, 0x6e, 0x69, 0x66, 0x6f, 0x72, 0x6d, 0x20, 0x76, 0x65, 0x63, 0x34, 0x20, 0x76, 0x73,
    0x5f, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x73, 0x5b, 0x34, 0x5d, 0x3b, 0x0a, 0x6c, 0x61, 0x79, 0x6f,
    0x75, 0x74, 0x28, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x31, 0x29,
    0x20, 0x69, 0x6e, 0x20, 0x76, 0x65, 0x63, 0x32, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61,
    0x6e, 0x63, 0x65, 0x5f, 0x70, 0x6f, 0x73, 0x3b, 0x0a, 0x6c, 0x61, 0x79, 0x6f, 0x75, 0x74, 0x28,
    0x6c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x30, 0x29, 0x20, 0x69, 0x6e,
    0x20, 0x76, 0x65, 0x63, 0x32, 0x20, 0x61, 0x5f, 0x70, 0x6f, 0x73, 0x3b, 0x0a, 0x6c, 0x61, 0x79,
    0x6f, 0x75, 0x74, 0x28, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x32,
    0x29, 0x20, 0x69, 0x6e, 0x20, 0x76, 0x65, 0x63, 0x32, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74,
    0x61, 0x6e, 0x63, 0x65, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x3b, 0x0a, 0x6f, 0x75, 0x74, 0x20, 0x76,
    0x65, 0x63, 0x34, 0x20, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x6c, 0x61, 0x79, 0x6f, 0x75,
    0x74, 0x28, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x33, 0x29, 0x20,
    0x69, 0x6e, 0x20, 0x76, 0x65, 0x63, 0x34, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e,
    0x63, 0x65, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x0a, 0x76, 0x6f, 0x69, 0x64, 0x20,
    0x6d, 0x61, 0x69, 0x6e, 0x28, 0x29, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x67, 0x6c, 0x5f,
    0x50, 0x6f, 0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x6d, 0x61, 0x74, 0x34, 0x28,
    0x76, 0x73, 0x5f, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x73, 0x5b, 0x30, 0x5d, 0x2c, 0x20, 0x76, 0x73,
    0x5f, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x73, 0x5b, 0x31, 0x5d, 0x2c, 0x20, 0x76, 0x73, 0x5f, 0x70,
    0x61, 0x72, 0x61, 0x6d, 0x73, 0x5b, 0x32, 0x5d, 0x2c, 0x20, 0x76, 0x73, 0x5f, 0x70, 0x61, 0x72,
    0x61, 0x6d, 0x73, 0x5b, 0x33, 0x5d, 0x29, 0x20, 0x2a, 0x20, 0x76, 0x65, 0x63, 0x34, 0x28, 0x61,
    0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x70, 0x6f, 0x73, 0x20, 0x2b, 0x20,
    0x28, 0x61, 0x5f, 0x70, 0x6f, 0x73, 0x20, 0x2a, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61,
    0x6e, 0x63, 0x65, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x29, 0x2c, 0x20, 0x30, 0x2e, 0x30, 0x2c, 0x20,
    0x31, 0x2e, 0x30, 0x29, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x20,
    0x3d, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x63, 0x6f, 0x6c,
    0x6f, 0x72, 0x3b, 0x0a, 0x7d, 0x0a, 0x0a, 0x00,
};
//
//    #version 300 es
//    precision mediump float;
//    precision highp int;
//
//    layout(location = 0) out highp vec4 frag_color;
//    in highp vec4 color;
//
//    void main()
//    {
//        frag_color = color;
//    }
//
//
const fs_source_glsl300es = [175]u8{
    0x23, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x20, 0x33, 0x30, 0x30, 0x20, 0x65, 0x73, 0x0a,
    0x70, 0x72, 0x65, 0x63, 0x69, 0x73, 0x69, 0x6f, 0x6e, 0x20, 0x6d, 0x65, 0x64, 0x69, 0x75, 0x6d,
    0x70, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x3b, 0x0a, 0x70, 0x72, 0x65, 0x63, 0x69, 0x73, 0x69,
    0x6f, 0x6e, 0x20, 0x68, 0x69, 0x67, 0x68, 0x70, 0x20, 0x69, 0x6e, 0x74, 0x3b, 0x0a, 0x0a, 0x6c,
    0x61, 0x79, 0x6f, 0x75, 0x74, 0x28, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d,
    0x20, 0x30, 0x29, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x68, 0x69, 0x67, 0x68, 0x70, 0x20, 0x76, 0x65,
    0x63, 0x34, 0x20, 0x66, 0x72, 0x61, 0x67, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x69,
    0x6e, 0x20, 0x68, 0x69, 0x67, 0x68, 0x70, 0x20, 0x76, 0x65, 0x63, 0x34, 0x20, 0x63, 0x6f, 0x6c,
    0x6f, 0x72, 0x3b, 0x0a, 0x0a, 0x76, 0x6f, 0x69, 0x64, 0x20, 0x6d, 0x61, 0x69, 0x6e, 0x28, 0x29,
    0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x72, 0x61, 0x67, 0x5f, 0x63, 0x6f, 0x6c, 0x6f,
    0x72, 0x20, 0x3d, 0x20, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x7d, 0x0a, 0x0a, 0x00,
};
//
//    cbuffer vs_params : register(b0)
//    {
//        row_major float4x4 _31_u_proj : packoffset(c0);
//    };
//
//
//    static float4 gl_Position;
//    static float2 a_instance_pos;
//    static float2 a_pos;
//    static float2 a_instance_size;
//    static float4 color;
//    static float4 a_instance_color;
//
//    struct SPIRV_Cross_Input
//    {
//        float2 a_pos : TEXCOORD0;
//        float2 a_instance_pos : TEXCOORD1;
//        float2 a_instance_size : TEXCOORD2;
//        float4 a_instance_color : TEXCOORD3;
//    };
//
//    struct SPIRV_Cross_Output
//    {
//        float4 color : TEXCOORD0;
//        float4 gl_Position : SV_Position;
//    };
//
//    void vert_main()
//    {
//        gl_Position = mul(float4(a_instance_pos + (a_pos * a_instance_size), 0.0f, 1.0f), _31_u_proj);
//        color = a_instance_color;
//    }
//
//    SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
//    {
//        a_instance_pos = stage_input.a_instance_pos;
//        a_pos = stage_input.a_pos;
//        a_instance_size = stage_input.a_instance_size;
//        a_instance_color = stage_input.a_instance_color;
//        vert_main();
//        SPIRV_Cross_Output stage_output;
//        stage_output.gl_Position = gl_Position;
//        stage_output.color = color;
//        return stage_output;
//    }
//
const vs_source_hlsl5 = [1086]u8{
    0x63, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x76, 0x73, 0x5f, 0x70, 0x61, 0x72, 0x61, 0x6d,
    0x73, 0x20, 0x3a, 0x20, 0x72, 0x65, 0x67, 0x69, 0x73, 0x74, 0x65, 0x72, 0x28, 0x62, 0x30, 0x29,
    0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x72, 0x6f, 0x77, 0x5f, 0x6d, 0x61, 0x6a, 0x6f, 0x72,
    0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x34, 0x78, 0x34, 0x20, 0x5f, 0x33, 0x31, 0x5f, 0x75, 0x5f,
    0x70, 0x72, 0x6f, 0x6a, 0x20, 0x3a, 0x20, 0x70, 0x61, 0x63, 0x6b, 0x6f, 0x66, 0x66, 0x73, 0x65,
    0x74, 0x28, 0x63, 0x30, 0x29, 0x3b, 0x0a, 0x7d, 0x3b, 0x0a, 0x0a, 0x0a, 0x73, 0x74, 0x61, 0x74,
    0x69, 0x63, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x34, 0x20, 0x67, 0x6c, 0x5f, 0x50, 0x6f, 0x73,
    0x69, 0x74, 0x69, 0x6f, 0x6e, 0x3b, 0x0a, 0x73, 0x74, 0x61, 0x74, 0x69, 0x63, 0x20, 0x66, 0x6c,
    0x6f, 0x61, 0x74, 0x32, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f,
    0x70, 0x6f, 0x73, 0x3b, 0x0a, 0x73, 0x74, 0x61, 0x74, 0x69, 0x63, 0x20, 0x66, 0x6c, 0x6f, 0x61,
    0x74, 0x32, 0x20, 0x61, 0x5f, 0x70, 0x6f, 0x73, 0x3b, 0x0a, 0x73, 0x74, 0x61, 0x74, 0x69, 0x63,
    0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x32, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e,
    0x63, 0x65, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x3b, 0x0a, 0x73, 0x74, 0x61, 0x74, 0x69, 0x63, 0x20,
    0x66, 0x6c, 0x6f, 0x61, 0x74, 0x34, 0x20, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x73, 0x74,
    0x61, 0x74, 0x69, 0x63, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x34, 0x20, 0x61, 0x5f, 0x69, 0x6e,
    0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x0a, 0x73,
    0x74, 0x72, 0x75, 0x63, 0x74, 0x20, 0x53, 0x50, 0x49, 0x52, 0x56, 0x5f, 0x43, 0x72, 0x6f, 0x73,
    0x73, 0x5f, 0x49, 0x6e, 0x70, 0x75, 0x74, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x6c,
    0x6f, 0x61, 0x74, 0x32, 0x20, 0x61, 0x5f, 0x70, 0x6f, 0x73, 0x20, 0x3a, 0x20, 0x54, 0x45, 0x58,
    0x43, 0x4f, 0x4f, 0x52, 0x44, 0x30, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x6c, 0x6f, 0x61,
    0x74, 0x32, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x70, 0x6f,
    0x73, 0x20, 0x3a, 0x20, 0x54, 0x45, 0x58, 0x43, 0x4f, 0x4f, 0x52, 0x44, 0x31, 0x3b, 0x0a, 0x20,
    0x20, 0x20, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x32, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74,
    0x61, 0x6e, 0x63, 0x65, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x20, 0x3a, 0x20, 0x54, 0x45, 0x58, 0x43,
    0x4f, 0x4f, 0x52, 0x44, 0x32, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74,
    0x34, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x63, 0x6f, 0x6c,
    0x6f, 0x72, 0x20, 0x3a, 0x20, 0x54, 0x45, 0x58, 0x43, 0x4f, 0x4f, 0x52, 0x44, 0x33, 0x3b, 0x0a,
    0x7d, 0x3b, 0x0a, 0x0a, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x20, 0x53, 0x50, 0x49, 0x52, 0x56,
    0x5f, 0x43, 0x72, 0x6f, 0x73, 0x73, 0x5f, 0x4f, 0x75, 0x74, 0x70, 0x75, 0x74, 0x0a, 0x7b, 0x0a,
    0x20, 0x20, 0x20, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x34, 0x20, 0x63, 0x6f, 0x6c, 0x6f, 0x72,
    0x20, 0x3a, 0x20, 0x54, 0x45, 0x58, 0x43, 0x4f, 0x4f, 0x52, 0x44, 0x30, 0x3b, 0x0a, 0x20, 0x20,
    0x20, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x34, 0x20, 0x67, 0x6c, 0x5f, 0x50, 0x6f, 0x73, 0x69,
    0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3a, 0x20, 0x53, 0x56, 0x5f, 0x50, 0x6f, 0x73, 0x69, 0x74, 0x69,
    0x6f, 0x6e, 0x3b, 0x0a, 0x7d, 0x3b, 0x0a, 0x0a, 0x76, 0x6f, 0x69, 0x64, 0x20, 0x76, 0x65, 0x72,
    0x74, 0x5f, 0x6d, 0x61, 0x69, 0x6e, 0x28, 0x29, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x67,
    0x6c, 0x5f, 0x50, 0x6f, 0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x6d, 0x75, 0x6c,
    0x28, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x34, 0x28, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e,
    0x63, 0x65, 0x5f, 0x70, 0x6f, 0x73, 0x20, 0x2b, 0x20, 0x28, 0x61, 0x5f, 0x70, 0x6f, 0x73, 0x20,
    0x2a, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x73, 0x69, 0x7a,
    0x65, 0x29, 0x2c, 0x20, 0x30, 0x2e, 0x30, 0x66, 0x2c, 0x20, 0x31, 0x2e, 0x30, 0x66, 0x29, 0x2c,
    0x20, 0x5f, 0x33, 0x31, 0x5f, 0x75, 0x5f, 0x70, 0x72, 0x6f, 0x6a, 0x29, 0x3b, 0x0a, 0x20, 0x20,
    0x20, 0x20, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x20, 0x3d, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74,
    0x61, 0x6e, 0x63, 0x65, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x7d, 0x0a, 0x0a, 0x53,
    0x50, 0x49, 0x52, 0x56, 0x5f, 0x43, 0x72, 0x6f, 0x73, 0x73, 0x5f, 0x4f, 0x75, 0x74, 0x70, 0x75,
    0x74, 0x20, 0x6d, 0x61, 0x69, 0x6e, 0x28, 0x53, 0x50, 0x49, 0x52, 0x56, 0x5f, 0x43, 0x72, 0x6f,
    0x73, 0x73, 0x5f, 0x49, 0x6e, 0x70, 0x75, 0x74, 0x20, 0x73, 0x74, 0x61, 0x67, 0x65, 0x5f, 0x69,
    0x6e, 0x70, 0x75, 0x74, 0x29, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x61, 0x5f, 0x69, 0x6e,
    0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x70, 0x6f, 0x73, 0x20, 0x3d, 0x20, 0x73, 0x74, 0x61,
    0x67, 0x65, 0x5f, 0x69, 0x6e, 0x70, 0x75, 0x74, 0x2e, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61,
    0x6e, 0x63, 0x65, 0x5f, 0x70, 0x6f, 0x73, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x61, 0x5f, 0x70,
    0x6f, 0x73, 0x20, 0x3d, 0x20, 0x73, 0x74, 0x61, 0x67, 0x65, 0x5f, 0x69, 0x6e, 0x70, 0x75, 0x74,
    0x2e, 0x61, 0x5f, 0x70, 0x6f, 0x73, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x61, 0x5f, 0x69, 0x6e,
    0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x20, 0x3d, 0x20, 0x73, 0x74,
    0x61, 0x67, 0x65, 0x5f, 0x69, 0x6e, 0x70, 0x75, 0x74, 0x2e, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74,
    0x61, 0x6e, 0x63, 0x65, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x61,
    0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x20,
    0x3d, 0x20, 0x73, 0x74, 0x61, 0x67, 0x65, 0x5f, 0x69, 0x6e, 0x70, 0x75, 0x74, 0x2e, 0x61, 0x5f,
    0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a,
    0x20, 0x20, 0x20, 0x20, 0x76, 0x65, 0x72, 0x74, 0x5f, 0x6d, 0x61, 0x69, 0x6e, 0x28, 0x29, 0x3b,
    0x0a, 0x20, 0x20, 0x20, 0x20, 0x53, 0x50, 0x49, 0x52, 0x56, 0x5f, 0x43, 0x72, 0x6f, 0x73, 0x73,
    0x5f, 0x4f, 0x75, 0x74, 0x70, 0x75, 0x74, 0x20, 0x73, 0x74, 0x61, 0x67, 0x65, 0x5f, 0x6f, 0x75,
    0x74, 0x70, 0x75, 0x74, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x73, 0x74, 0x61, 0x67, 0x65, 0x5f,
    0x6f, 0x75, 0x74, 0x70, 0x75, 0x74, 0x2e, 0x67, 0x6c, 0x5f, 0x50, 0x6f, 0x73, 0x69, 0x74, 0x69,
    0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x67, 0x6c, 0x5f, 0x50, 0x6f, 0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e,
    0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x73, 0x74, 0x61, 0x67, 0x65, 0x5f, 0x6f, 0x75, 0x74, 0x70,
    0x75, 0x74, 0x2e, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x20, 0x3d, 0x20, 0x63, 0x6f, 0x6c, 0x6f, 0x72,
    0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x72, 0x65, 0x74, 0x75, 0x72, 0x6e, 0x20, 0x73, 0x74, 0x61,
    0x67, 0x65, 0x5f, 0x6f, 0x75, 0x74, 0x70, 0x75, 0x74, 0x3b, 0x0a, 0x7d, 0x0a, 0x00,
};
//
//    static float4 frag_color;
//    static float4 color;
//
//    struct SPIRV_Cross_Input
//    {
//        float4 color : TEXCOORD0;
//    };
//
//    struct SPIRV_Cross_Output
//    {
//        float4 frag_color : SV_Target0;
//    };
//
//    void frag_main()
//    {
//        frag_color = color;
//    }
//
//    SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
//    {
//        color = stage_input.color;
//        frag_main();
//        SPIRV_Cross_Output stage_output;
//        stage_output.frag_color = frag_color;
//        return stage_output;
//    }
//
const fs_source_hlsl5 = [435]u8{
    0x73, 0x74, 0x61, 0x74, 0x69, 0x63, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x34, 0x20, 0x66, 0x72,
    0x61, 0x67, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x73, 0x74, 0x61, 0x74, 0x69, 0x63,
    0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x34, 0x20, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x0a,
    0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x20, 0x53, 0x50, 0x49, 0x52, 0x56, 0x5f, 0x43, 0x72, 0x6f,
    0x73, 0x73, 0x5f, 0x49, 0x6e, 0x70, 0x75, 0x74, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66,
    0x6c, 0x6f, 0x61, 0x74, 0x34, 0x20, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x20, 0x3a, 0x20, 0x54, 0x45,
    0x58, 0x43, 0x4f, 0x4f, 0x52, 0x44, 0x30, 0x3b, 0x0a, 0x7d, 0x3b, 0x0a, 0x0a, 0x73, 0x74, 0x72,
    0x75, 0x63, 0x74, 0x20, 0x53, 0x50, 0x49, 0x52, 0x56, 0x5f, 0x43, 0x72, 0x6f, 0x73, 0x73, 0x5f,
    0x4f, 0x75, 0x74, 0x70, 0x75, 0x74, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x6c, 0x6f,
    0x61, 0x74, 0x34, 0x20, 0x66, 0x72, 0x61, 0x67, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x20, 0x3a,
    0x20, 0x53, 0x56, 0x5f, 0x54, 0x61, 0x72, 0x67, 0x65, 0x74, 0x30, 0x3b, 0x0a, 0x7d, 0x3b, 0x0a,
    0x0a, 0x76, 0x6f, 0x69, 0x64, 0x20, 0x66, 0x72, 0x61, 0x67, 0x5f, 0x6d, 0x61, 0x69, 0x6e, 0x28,
    0x29, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x72, 0x61, 0x67, 0x5f, 0x63, 0x6f, 0x6c,
    0x6f, 0x72, 0x20, 0x3d, 0x20, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x7d, 0x0a, 0x0a, 0x53,
    0x50, 0x49, 0x52, 0x56, 0x5f, 0x43, 0x72, 0x6f, 0x73, 0x73, 0x5f, 0x4f, 0x75, 0x74, 0x70, 0x75,
    0x74, 0x20, 0x6d, 0x61, 0x69, 0x6e, 0x28, 0x53, 0x50, 0x49, 0x52, 0x56, 0x5f, 0x43, 0x72, 0x6f,
    0x73, 0x73, 0x5f, 0x49, 0x6e, 0x70, 0x75, 0x74, 0x20, 0x73, 0x74, 0x61, 0x67, 0x65, 0x5f, 0x69,
    0x6e, 0x70, 0x75, 0x74, 0x29, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x63, 0x6f, 0x6c, 0x6f,
    0x72, 0x20, 0x3d, 0x20, 0x73, 0x74, 0x61, 0x67, 0x65, 0x5f, 0x69, 0x6e, 0x70, 0x75, 0x74, 0x2e,
    0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x72, 0x61, 0x67, 0x5f,
    0x6d, 0x61, 0x69, 0x6e, 0x28, 0x29, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x53, 0x50, 0x49, 0x52,
    0x56, 0x5f, 0x43, 0x72, 0x6f, 0x73, 0x73, 0x5f, 0x4f, 0x75, 0x74, 0x70, 0x75, 0x74, 0x20, 0x73,
    0x74, 0x61, 0x67, 0x65, 0x5f, 0x6f, 0x75, 0x74, 0x70, 0x75, 0x74, 0x3b, 0x0a, 0x20, 0x20, 0x20,
    0x20, 0x73, 0x74, 0x61, 0x67, 0x65, 0x5f, 0x6f, 0x75, 0x74, 0x70, 0x75, 0x74, 0x2e, 0x66, 0x72,
    0x61, 0x67, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x20, 0x3d, 0x20, 0x66, 0x72, 0x61, 0x67, 0x5f,
    0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x72, 0x65, 0x74, 0x75, 0x72,
    0x6e, 0x20, 0x73, 0x74, 0x61, 0x67, 0x65, 0x5f, 0x6f, 0x75, 0x74, 0x70, 0x75, 0x74, 0x3b, 0x0a,
    0x7d, 0x0a, 0x00,
};
//
//    #include <metal_stdlib>
//    #include <simd/simd.h>
//
//    using namespace metal;
//
//    struct vs_params
//    {
//        float4x4 u_proj;
//    };
//
//    struct main0_out
//    {
//        float4 color [[user(locn0)]];
//        float4 gl_Position [[position]];
//    };
//
//    struct main0_in
//    {
//        float2 a_pos [[attribute(0)]];
//        float2 a_instance_pos [[attribute(1)]];
//        float2 a_instance_size [[attribute(2)]];
//        float4 a_instance_color [[attribute(3)]];
//    };
//
//    vertex main0_out main0(main0_in in [[stage_in]], constant vs_params& _31 [[buffer(0)]])
//    {
//        main0_out out = {};
//        out.gl_Position = _31.u_proj * float4(in.a_instance_pos + (in.a_pos * in.a_instance_size), 0.0, 1.0);
//        out.color = in.a_instance_color;
//        return out;
//    }
//
//
const vs_source_metal_macos = [679]u8{
    0x23, 0x69, 0x6e, 0x63, 0x6c, 0x75, 0x64, 0x65, 0x20, 0x3c, 0x6d, 0x65, 0x74, 0x61, 0x6c, 0x5f,
    0x73, 0x74, 0x64, 0x6c, 0x69, 0x62, 0x3e, 0x0a, 0x23, 0x69, 0x6e, 0x63, 0x6c, 0x75, 0x64, 0x65,
    0x20, 0x3c, 0x73, 0x69, 0x6d, 0x64, 0x2f, 0x73, 0x69, 0x6d, 0x64, 0x2e, 0x68, 0x3e, 0x0a, 0x0a,
    0x75, 0x73, 0x69, 0x6e, 0x67, 0x20, 0x6e, 0x61, 0x6d, 0x65, 0x73, 0x70, 0x61, 0x63, 0x65, 0x20,
    0x6d, 0x65, 0x74, 0x61, 0x6c, 0x3b, 0x0a, 0x0a, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x20, 0x76,
    0x73, 0x5f, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x73, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66,
    0x6c, 0x6f, 0x61, 0x74, 0x34, 0x78, 0x34, 0x20, 0x75, 0x5f, 0x70, 0x72, 0x6f, 0x6a, 0x3b, 0x0a,
    0x7d, 0x3b, 0x0a, 0x0a, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x20, 0x6d, 0x61, 0x69, 0x6e, 0x30,
    0x5f, 0x6f, 0x75, 0x74, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74,
    0x34, 0x20, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x20, 0x5b, 0x5b, 0x75, 0x73, 0x65, 0x72, 0x28, 0x6c,
    0x6f, 0x63, 0x6e, 0x30, 0x29, 0x5d, 0x5d, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x6c, 0x6f,
    0x61, 0x74, 0x34, 0x20, 0x67, 0x6c, 0x5f, 0x50, 0x6f, 0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x20,
    0x5b, 0x5b, 0x70, 0x6f, 0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x5d, 0x5d, 0x3b, 0x0a, 0x7d, 0x3b,
    0x0a, 0x0a, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x20, 0x6d, 0x61, 0x69, 0x6e, 0x30, 0x5f, 0x69,
    0x6e, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x32, 0x20, 0x61,
    0x5f, 0x70, 0x6f, 0x73, 0x20, 0x5b, 0x5b, 0x61, 0x74, 0x74, 0x72, 0x69, 0x62, 0x75, 0x74, 0x65,
    0x28, 0x30, 0x29, 0x5d, 0x5d, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74,
    0x32, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x70, 0x6f, 0x73,
    0x20, 0x5b, 0x5b, 0x61, 0x74, 0x74, 0x72, 0x69, 0x62, 0x75, 0x74, 0x65, 0x28, 0x31, 0x29, 0x5d,
    0x5d, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x32, 0x20, 0x61, 0x5f,
    0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x73, 0x69, 0x7a, 0x65, 0x20, 0x5b, 0x5b,
    0x61, 0x74, 0x74, 0x72, 0x69, 0x62, 0x75, 0x74, 0x65, 0x28, 0x32, 0x29, 0x5d, 0x5d, 0x3b, 0x0a,
    0x20, 0x20, 0x20, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x34, 0x20, 0x61, 0x5f, 0x69, 0x6e, 0x73,
    0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x20, 0x5b, 0x5b, 0x61, 0x74,
    0x74, 0x72, 0x69, 0x62, 0x75, 0x74, 0x65, 0x28, 0x33, 0x29, 0x5d, 0x5d, 0x3b, 0x0a, 0x7d, 0x3b,
    0x0a, 0x0a, 0x76, 0x65, 0x72, 0x74, 0x65, 0x78, 0x20, 0x6d, 0x61, 0x69, 0x6e, 0x30, 0x5f, 0x6f,
    0x75, 0x74, 0x20, 0x6d, 0x61, 0x69, 0x6e, 0x30, 0x28, 0x6d, 0x61, 0x69, 0x6e, 0x30, 0x5f, 0x69,
    0x6e, 0x20, 0x69, 0x6e, 0x20, 0x5b, 0x5b, 0x73, 0x74, 0x61, 0x67, 0x65, 0x5f, 0x69, 0x6e, 0x5d,
    0x5d, 0x2c, 0x20, 0x63, 0x6f, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x74, 0x20, 0x76, 0x73, 0x5f, 0x70,
    0x61, 0x72, 0x61, 0x6d, 0x73, 0x26, 0x20, 0x5f, 0x33, 0x31, 0x20, 0x5b, 0x5b, 0x62, 0x75, 0x66,
    0x66, 0x65, 0x72, 0x28, 0x30, 0x29, 0x5d, 0x5d, 0x29, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20,
    0x6d, 0x61, 0x69, 0x6e, 0x30, 0x5f, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x3d, 0x20,
    0x7b, 0x7d, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x6f, 0x75, 0x74, 0x2e, 0x67, 0x6c, 0x5f, 0x50,
    0x6f, 0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x3d, 0x20, 0x5f, 0x33, 0x31, 0x2e, 0x75, 0x5f,
    0x70, 0x72, 0x6f, 0x6a, 0x20, 0x2a, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x34, 0x28, 0x69, 0x6e,
    0x2e, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x70, 0x6f, 0x73, 0x20,
    0x2b, 0x20, 0x28, 0x69, 0x6e, 0x2e, 0x61, 0x5f, 0x70, 0x6f, 0x73, 0x20, 0x2a, 0x20, 0x69, 0x6e,
    0x2e, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x73, 0x69, 0x7a, 0x65,
    0x29, 0x2c, 0x20, 0x30, 0x2e, 0x30, 0x2c, 0x20, 0x31, 0x2e, 0x30, 0x29, 0x3b, 0x0a, 0x20, 0x20,
    0x20, 0x20, 0x6f, 0x75, 0x74, 0x2e, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x20, 0x3d, 0x20, 0x69, 0x6e,
    0x2e, 0x61, 0x5f, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x63, 0x65, 0x5f, 0x63, 0x6f, 0x6c, 0x6f,
    0x72, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x72, 0x65, 0x74, 0x75, 0x72, 0x6e, 0x20, 0x6f, 0x75,
    0x74, 0x3b, 0x0a, 0x7d, 0x0a, 0x0a, 0x00,
};
//
//    #include <metal_stdlib>
//    #include <simd/simd.h>
//
//    using namespace metal;
//
//    struct main0_out
//    {
//        float4 frag_color [[color(0)]];
//    };
//
//    struct main0_in
//    {
//        float4 color [[user(locn0)]];
//    };
//
//    fragment main0_out main0(main0_in in [[stage_in]])
//    {
//        main0_out out = {};
//        out.frag_color = in.color;
//        return out;
//    }
//
//
const fs_source_metal_macos = [315]u8{
    0x23, 0x69, 0x6e, 0x63, 0x6c, 0x75, 0x64, 0x65, 0x20, 0x3c, 0x6d, 0x65, 0x74, 0x61, 0x6c, 0x5f,
    0x73, 0x74, 0x64, 0x6c, 0x69, 0x62, 0x3e, 0x0a, 0x23, 0x69, 0x6e, 0x63, 0x6c, 0x75, 0x64, 0x65,
    0x20, 0x3c, 0x73, 0x69, 0x6d, 0x64, 0x2f, 0x73, 0x69, 0x6d, 0x64, 0x2e, 0x68, 0x3e, 0x0a, 0x0a,
    0x75, 0x73, 0x69, 0x6e, 0x67, 0x20, 0x6e, 0x61, 0x6d, 0x65, 0x73, 0x70, 0x61, 0x63, 0x65, 0x20,
    0x6d, 0x65, 0x74, 0x61, 0x6c, 0x3b, 0x0a, 0x0a, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x20, 0x6d,
    0x61, 0x69, 0x6e, 0x30, 0x5f, 0x6f, 0x75, 0x74, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66,
    0x6c, 0x6f, 0x61, 0x74, 0x34, 0x20, 0x66, 0x72, 0x61, 0x67, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72,
    0x20, 0x5b, 0x5b, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x28, 0x30, 0x29, 0x5d, 0x5d, 0x3b, 0x0a, 0x7d,
    0x3b, 0x0a, 0x0a, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x20, 0x6d, 0x61, 0x69, 0x6e, 0x30, 0x5f,
    0x69, 0x6e, 0x0a, 0x7b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x34, 0x20,
    0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x20, 0x5b, 0x5b, 0x75, 0x73, 0x65, 0x72, 0x28, 0x6c, 0x6f, 0x63,
    0x6e, 0x30, 0x29, 0x5d, 0x5d, 0x3b, 0x0a, 0x7d, 0x3b, 0x0a, 0x0a, 0x66, 0x72, 0x61, 0x67, 0x6d,
    0x65, 0x6e, 0x74, 0x20, 0x6d, 0x61, 0x69, 0x6e, 0x30, 0x5f, 0x6f, 0x75, 0x74, 0x20, 0x6d, 0x61,
    0x69, 0x6e, 0x30, 0x28, 0x6d, 0x61, 0x69, 0x6e, 0x30, 0x5f, 0x69, 0x6e, 0x20, 0x69, 0x6e, 0x20,
    0x5b, 0x5b, 0x73, 0x74, 0x61, 0x67, 0x65, 0x5f, 0x69, 0x6e, 0x5d, 0x5d, 0x29, 0x0a, 0x7b, 0x0a,
    0x20, 0x20, 0x20, 0x20, 0x6d, 0x61, 0x69, 0x6e, 0x30, 0x5f, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x75,
    0x74, 0x20, 0x3d, 0x20, 0x7b, 0x7d, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x6f, 0x75, 0x74, 0x2e,
    0x66, 0x72, 0x61, 0x67, 0x5f, 0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x20, 0x3d, 0x20, 0x69, 0x6e, 0x2e,
    0x63, 0x6f, 0x6c, 0x6f, 0x72, 0x3b, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x72, 0x65, 0x74, 0x75, 0x72,
    0x6e, 0x20, 0x6f, 0x75, 0x74, 0x3b, 0x0a, 0x7d, 0x0a, 0x0a, 0x00,
};
pub fn quadShaderDesc(backend: sg.Backend) sg.ShaderDesc {
    var desc: sg.ShaderDesc = .{};
    desc.label = "quad_shader";
    switch (backend) {
        .GLCORE => {
            desc.vertex_func.source = &vs_source_glsl430;
            desc.vertex_func.entry = "main";
            desc.fragment_func.source = &fs_source_glsl430;
            desc.fragment_func.entry = "main";
            desc.attrs[0].base_type = .FLOAT;
            desc.attrs[0].glsl_name = "a_pos";
            desc.attrs[1].base_type = .FLOAT;
            desc.attrs[1].glsl_name = "a_instance_pos";
            desc.attrs[2].base_type = .FLOAT;
            desc.attrs[2].glsl_name = "a_instance_size";
            desc.attrs[3].base_type = .FLOAT;
            desc.attrs[3].glsl_name = "a_instance_color";
            desc.uniform_blocks[0].stage = .VERTEX;
            desc.uniform_blocks[0].layout = .STD140;
            desc.uniform_blocks[0].size = 64;
            desc.uniform_blocks[0].glsl_uniforms[0].type = .FLOAT4;
            desc.uniform_blocks[0].glsl_uniforms[0].array_count = 4;
            desc.uniform_blocks[0].glsl_uniforms[0].glsl_name = "vs_params";
        },
        .GLES3 => {
            desc.vertex_func.source = &vs_source_glsl300es;
            desc.vertex_func.entry = "main";
            desc.fragment_func.source = &fs_source_glsl300es;
            desc.fragment_func.entry = "main";
            desc.attrs[0].base_type = .FLOAT;
            desc.attrs[0].glsl_name = "a_pos";
            desc.attrs[1].base_type = .FLOAT;
            desc.attrs[1].glsl_name = "a_instance_pos";
            desc.attrs[2].base_type = .FLOAT;
            desc.attrs[2].glsl_name = "a_instance_size";
            desc.attrs[3].base_type = .FLOAT;
            desc.attrs[3].glsl_name = "a_instance_color";
            desc.uniform_blocks[0].stage = .VERTEX;
            desc.uniform_blocks[0].layout = .STD140;
            desc.uniform_blocks[0].size = 64;
            desc.uniform_blocks[0].glsl_uniforms[0].type = .FLOAT4;
            desc.uniform_blocks[0].glsl_uniforms[0].array_count = 4;
            desc.uniform_blocks[0].glsl_uniforms[0].glsl_name = "vs_params";
        },
        .D3D11 => {
            desc.vertex_func.source = &vs_source_hlsl5;
            desc.vertex_func.d3d11_target = "vs_5_0";
            desc.vertex_func.entry = "main";
            desc.fragment_func.source = &fs_source_hlsl5;
            desc.fragment_func.d3d11_target = "ps_5_0";
            desc.fragment_func.entry = "main";
            desc.attrs[0].base_type = .FLOAT;
            desc.attrs[0].hlsl_sem_name = "TEXCOORD";
            desc.attrs[0].hlsl_sem_index = 0;
            desc.attrs[1].base_type = .FLOAT;
            desc.attrs[1].hlsl_sem_name = "TEXCOORD";
            desc.attrs[1].hlsl_sem_index = 1;
            desc.attrs[2].base_type = .FLOAT;
            desc.attrs[2].hlsl_sem_name = "TEXCOORD";
            desc.attrs[2].hlsl_sem_index = 2;
            desc.attrs[3].base_type = .FLOAT;
            desc.attrs[3].hlsl_sem_name = "TEXCOORD";
            desc.attrs[3].hlsl_sem_index = 3;
            desc.uniform_blocks[0].stage = .VERTEX;
            desc.uniform_blocks[0].layout = .STD140;
            desc.uniform_blocks[0].size = 64;
            desc.uniform_blocks[0].hlsl_register_b_n = 0;
        },
        .METAL_MACOS => {
            desc.vertex_func.source = &vs_source_metal_macos;
            desc.vertex_func.entry = "main0";
            desc.fragment_func.source = &fs_source_metal_macos;
            desc.fragment_func.entry = "main0";
            desc.attrs[0].base_type = .FLOAT;
            desc.attrs[1].base_type = .FLOAT;
            desc.attrs[2].base_type = .FLOAT;
            desc.attrs[3].base_type = .FLOAT;
            desc.uniform_blocks[0].stage = .VERTEX;
            desc.uniform_blocks[0].layout = .STD140;
            desc.uniform_blocks[0].size = 64;
            desc.uniform_blocks[0].msl_buffer_n = 0;
        },
        else => {},
    }
    return desc;
}
pub fn quadAttrSlot(attr_name: []const u8) ?usize {
    if (std.mem.eql(u8, attr_name, "a_pos")) {
        return 0;
    }
    if (std.mem.eql(u8, attr_name, "a_instance_pos")) {
        return 1;
    }
    if (std.mem.eql(u8, attr_name, "a_instance_size")) {
        return 2;
    }
    if (std.mem.eql(u8, attr_name, "a_instance_color")) {
        return 3;
    }
    return null;
}
pub fn quadImageSlot(img_name: []const u8) ?usize {
    _ = img_name;
    return null;
}
pub fn quadSamplerSlot(smp_name: []const u8) ?usize {
    _ = smp_name;
    return null;
}
pub fn quadUniformblockSlot(ub_name: []const u8) ?usize {
    if (std.mem.eql(u8, ub_name, "vs_params")) {
        return 0;
    }
    return null;
}
pub fn quadUniformblockSize(ub_name: []const u8) ?usize {
    if (std.mem.eql(u8, ub_name, "vs_params")) {
        return @sizeOf(VsParams);
    }
    return null;
}
pub fn quadUniformOffset(ub_name: []const u8, u_name: []const u8) ?usize {
    if (std.mem.eql(u8, ub_name, "vs_params")) {
        if (std.mem.eql(u8, u_name, "u_proj")) {
            return 0;
        }
    }
    return null;
}
pub fn quadUniformDesc(ub_name: []const u8, u_name: []const u8) ?sg.GlslShaderUniform {
    if (std.mem.eql(u8, ub_name, "vs_params")) {
        if (std.mem.eql(u8, u_name, "u_proj")) {
            var desc: sg.GlslShaderUniform = .{};
            desc.type = .MAT4;
            desc.array_count = 0;
            desc.glsl_name = "u_proj";
            return desc;
        }
    }
    return null;
}
pub fn quadStoragebufferSlot(sbuf_name: []const u8) ?usize {
    _ = sbuf_name;
    return null;
}
