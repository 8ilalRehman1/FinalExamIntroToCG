Shader "ToonShading"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
        //Base colour tint
        _RampTex ("Ramp Texture", 2D) = "white" {}
        //The bands in the ramp will influence the shading
    }
    SubShader
    {
        CGPROGRAM

        #pragma surface surf ToonRamp

        sampler2D _RampTex;

        fixed4 _Color;

        float4 LightingToonRamp (SurfaceOutput s, fixed3 lightDir, fixed atten)
        {
            float diff = dot (s.Normal, lightDir);
            float h = diff * 0.5 + 0.5;
            float2 rh = h;
            float ramp = tex2D(_RampTex, rh).rgb;
            float4 c;
            c.rgb = s.Albedo * _LightColor0.rgb * (ramp);
            c.a = s.Alpha;
            return c;
        }

        struct Input
        {
            float2 uv_MainTex;
        };

        void surf (Input IN, inout SurfaceOutput o)
        {
            
            o.Albedo = _Color.rgb;
        }
        ENDCG
    }
    FallBack "Diffuse"
}