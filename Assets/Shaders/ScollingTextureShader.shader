Shader "Scrolling"
{
    Properties
    {
        _MainTex ("Background", 2D) = "white" {}
        _ScrollX ("Scroll X", Range(-5,5)) = 1
        _ScrollY ("Scroll Y", Range(-5,5)) = 1
        //Main texture that can be effected by scrolling
    }
    SubShader
    {
        CGPROGRAM
        #pragma surface surf Lambert
        float _ScrollX;
        float _ScrollY;
        sampler2D _MainTex;

        struct Input
        {
            float2 uv_MainTex;
        };

        void surf (Input IN, inout SurfaceOutput o)
        {
            _ScrollX *= _Time;
            float3 background = (tex2D(_MainTex, IN.uv_MainTex + float2(_ScrollX,_ScrollY))).rgb;
            o.Albedo = (background);
        }
        ENDCG
    }
    FallBack "Diffuse"
}
