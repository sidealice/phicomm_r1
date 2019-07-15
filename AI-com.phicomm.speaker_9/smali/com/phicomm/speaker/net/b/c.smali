.class public Lcom/phicomm/speaker/net/b/c;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"


# static fields
.field private static volatile a:Lokhttp3/OkHttpClient;

.field private static volatile b:Landroid/os/Handler;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/net/b/c;->c:Ljava/util/HashMap;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/phicomm/speaker/net/b/c;->b:Landroid/os/Handler;

    .line 49
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 50
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Lokhttp3/OkHttpClient$Builder;)V

    .line 51
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/net/b/c;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private static a()Landroid/os/Handler;
    .locals 2

    .line 55
    sget-object v0, Lcom/phicomm/speaker/net/b/c;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/phicomm/speaker/net/b/c;->b:Landroid/os/Handler;

    .line 58
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/net/b/c;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;
    .locals 1

    .line 81
    new-instance v0, Lcom/phicomm/speaker/net/c/c;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/net/c/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lokhttp3/Request;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;
    .locals 1

    .line 98
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "302"

    const-string v0, "302"

    .line 99
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x12e

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 100
    invoke-virtual {p1, p0, v0}, Lcom/phicomm/speaker/net/a/a;->a(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/net/b/c;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 104
    invoke-interface {v0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 105
    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/phicomm/speaker/net/a/a;->a(Lokhttp3/Call;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 77
    invoke-static {}, Lcom/phicomm/speaker/net/b/c;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static a(Lokhttp3/OkHttpClient$Builder;)V
    .locals 4

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 63
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 65
    new-instance v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;

    invoke-direct {v0}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->BODY:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->a(Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;)Lcom/phicomm/speaker/net/interceptor/MyInterceptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 66
    invoke-static {}, Lcom/phicomm/speaker/net/d/a;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 67
    invoke-static {}, Lcom/phicomm/speaker/f/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 68
    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    const-string v3, "-----BEGIN CERTIFICATE-----\nMIIHAzCCBeugAwIBAgIQdSfD98MlqmJlqGAwP0QbRTANBgkqhkiG9w0BAQsFADB+\nMQswCQYDVQQGEwJVUzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24xHzAd\nBgNVBAsTFlN5bWFudGVjIFRydXN0IE5ldHdvcmsxLzAtBgNVBAMTJlN5bWFudGVj\nIENsYXNzIDMgU2VjdXJlIFNlcnZlciBDQSAtIEc0MB4XDTE3MDczMTAwMDAwMFoX\nDTIwMDczMDIzNTk1OVowgZAxCzAJBgNVBAYTAkNOMQ8wDQYDVQQIDAbkuIrmtbcx\nDzANBgNVBAcMBuS4iua1tzEzMDEGA1UECgwq5LiK5rW35paQ6K6v5pWw5o2u6YCa\n5L+h5oqA5pyv5pyJ6ZmQ5YWs5Y+4MRIwEAYDVQQLDAnmioDmnK/pg6gxFjAUBgNV\nBAMMDSoucGhpY29tbS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB\nAQCpxOcJiYn7ug7G3Hq/h8cdUgg79AsNd+mqsGYk46EOj4JSQp43YBXdI3K7ST+s\nc3Im9uk5HixTEVDNhNaDbz5EFN93NnGCYSI3rXzdKQ/8dEyHxWfkvBpyTVGLmT9W\nRaXdUYsFojD4JbvCYW2SBXSLI+vNXRH5chvlMDZq6WoX8oP4JhOnqnrXMBuYQkXC\ncni1EwBPrabHFbtf78Q3bp7ea2bMkz+NpKB/V79tCOrlovamtR0n4Z4PqQXM3f4C\nI3afdVV+nfopVQIyFDKf45vJhFD7r4IPy3mFyuX49ikax3KwuaBwBnr2vKJZpI49\n3YEdAvMYqgtLWMoJprjorrk1AgMBAAGjggNoMIIDZDAlBgNVHREEHjAcgg0qLnBo\naWNvbW0uY29tggtwaGljb21tLmNvbTAJBgNVHRMEAjAAMA4GA1UdDwEB/wQEAwIF\noDArBgNVHR8EJDAiMCCgHqAchhpodHRwOi8vc3Muc3ltY2IuY29tL3NzLmNybDBh\nBgNVHSAEWjBYMFYGBmeBDAECAjBMMCMGCCsGAQUFBwIBFhdodHRwczovL2Quc3lt\nY2IuY29tL2NwczAlBggrBgEFBQcCAjAZDBdodHRwczovL2Quc3ltY2IuY29tL3Jw\nYTAdBgNVHSUEFjAUBggrBgEFBQcDAQYIKwYBBQUHAwIwHwYDVR0jBBgwFoAUX2DP\nYZBV34RDFIpgKrL1evRDGO8wVwYIKwYBBQUHAQEESzBJMB8GCCsGAQUFBzABhhNo\ndHRwOi8vc3Muc3ltY2QuY29tMCYGCCsGAQUFBzAChhpodHRwOi8vc3Muc3ltY2Iu\nY29tL3NzLmNydDCCAfUGCisGAQQB1nkCBAIEggHlBIIB4QHfAHYA3esdK3oNT6Yg\ni4GtgWhwfi6OnQHVXIiNPRHEzbbsvswAAAFdlmPatAAABAMARzBFAiEAy3NnACn7\nLnSxx+nIy6UIpMnYBuOVva6DzQkSp+baaN8CIGr4pIr1gEV1Pe9J4Bpq3l1cL2SX\ncfzb3wacBaTNsM8PAHYApLkJkLQYWBSHuxOizGdwCjw1mAT5G9+443fNDsgN3BAA\nAAFdlmPa2QAABAMARzBFAiEA7oCAe2Dl/3dTFDx8n/GfadK+CdEfeO1dYOrTOabn\n7w4CIBdurjzxOGmOpTK3c/vg6E1/IHWU6+nOGiLp60+JlxlVAHUA7ku9t3XOYLrh\nQmkfq+GeZqMPfl+wctiDAMR7iXqo/csAAAFdlmPa7wAABAMARjBEAiB0aP8NaB+9\nTYBj6kItWwpf/jwoLVnq5yDPPWUnSkPpnQIgPE3MxU81lQwyPLr2WwrKswb8mVuc\nAoHFE+3tyGyYQ18AdgC8eOHfxfY8aEZJM02hD6FfCXlpIAnAgbTz9pF/Ptm4pQAA\nAV2WY9unAAAEAwBHMEUCIBPMbDD1DQScvijRThaz3t0MLDD0/eof3AVV2FkgCSir\nAiEA17x+7rFE0gdjl9lxcTaFogJvLnea1bxzbgC68SjDWI4wDQYJKoZIhvcNAQEL\nBQADggEBAFULXBM5aSIMyi1t/rz0iAnB7Ti0a1ZpVylo3E9MSB/SXyBftbvk6Gg1\neJdDR/JxtMYfQn5XEwRDoNb19srERnWpCyMxtlvXJqMfUmjSCwYlk1ZsE6X8PAQP\nEIAaYPaRuzjPFIeqT96kT3cm0FdPsy5MdzKLYKGoaMB6LiFgpRaO8NIbrLfNs4T1\nKvGfgBC2NH8rFWTsvuA8Y7qr56w6nNb+ThqW7WykFipu6z1J4M8XpvgVw7LJHkQd\n4yAkGvK0f/i+vKM2XGA3tdteEKLjHWusfPKzCTk/EKUsoPRkTXFNxIOXx3GIoisP\nJB/lOiE4wvm4M+NRBAjf/QeMQqkFX5Y=\n-----END CERTIFICATE-----\n-----BEGIN CERTIFICATE-----\nMIIFODCCBCCgAwIBAgIQUT+5dDhwtzRAQY0wkwaZ/zANBgkqhkiG9w0BAQsFADCB\nyjELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQL\nExZWZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTowOAYDVQQLEzEoYykgMjAwNiBWZXJp\nU2lnbiwgSW5jLiAtIEZvciBhdXRob3JpemVkIHVzZSBvbmx5MUUwQwYDVQQDEzxW\nZXJpU2lnbiBDbGFzcyAzIFB1YmxpYyBQcmltYXJ5IENlcnRpZmljYXRpb24gQXV0\naG9yaXR5IC0gRzUwHhcNMTMxMDMxMDAwMDAwWhcNMjMxMDMwMjM1OTU5WjB+MQsw\nCQYDVQQGEwJVUzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24xHzAdBgNV\nBAsTFlN5bWFudGVjIFRydXN0IE5ldHdvcmsxLzAtBgNVBAMTJlN5bWFudGVjIENs\nYXNzIDMgU2VjdXJlIFNlcnZlciBDQSAtIEc0MIIBIjANBgkqhkiG9w0BAQEFAAOC\nAQ8AMIIBCgKCAQEAstgFyhx0LbUXVjnFSlIJluhL2AzxaJ+aQihiw6UwU35VEYJb\nA3oNL+F5BMm0lncZgQGUWfm893qZJ4Itt4PdWid/sgN6nFMl6UgfRk/InSn4vnlW\n9vf92Tpo2otLgjNBEsPIPMzWlnqEIRoiBAMnF4scaGGTDw5RgDMdtLXO637QYqzu\ns3sBdO9pNevK1T2p7peYyo2qRA4lmUoVlqTObQJUHypqJuIGOmNIrLRM0XWTUP8T\nL9ba4cYY9Z/JJV3zADreJk20KQnNDz0jbxZKgRb78oMQw7jW2FUyPfG9D72MUpVK\nFpd6UiFjdS8W+cRmvvW1Cdj/JwDNRHxvSz+w9wIDAQABo4IBYzCCAV8wEgYDVR0T\nAQH/BAgwBgEB/wIBADAwBgNVHR8EKTAnMCWgI6Ahhh9odHRwOi8vczEuc3ltY2Iu\nY29tL3BjYTMtZzUuY3JsMA4GA1UdDwEB/wQEAwIBBjAvBggrBgEFBQcBAQQjMCEw\nHwYIKwYBBQUHMAGGE2h0dHA6Ly9zMi5zeW1jYi5jb20wawYDVR0gBGQwYjBgBgpg\nhkgBhvhFAQc2MFIwJgYIKwYBBQUHAgEWGmh0dHA6Ly93d3cuc3ltYXV0aC5jb20v\nY3BzMCgGCCsGAQUFBwICMBwaGmh0dHA6Ly93d3cuc3ltYXV0aC5jb20vcnBhMCkG\nA1UdEQQiMCCkHjAcMRowGAYDVQQDExFTeW1hbnRlY1BLSS0xLTUzNDAdBgNVHQ4E\nFgQUX2DPYZBV34RDFIpgKrL1evRDGO8wHwYDVR0jBBgwFoAUf9Nlp8Ld7LvwMAnz\nQzn6Aq8zMTMwDQYJKoZIhvcNAQELBQADggEBAF6UVkndji1l9cE2UbYD49qecxny\nH1mrWH5sJgUs+oHXXCMXIiw3k/eG7IXmsKP9H+IyqEVv4dn7ua/ScKAyQmW/hP4W\nKo8/xabWo5N9Q+l0IZE1KPRj6S7t9/Vcf0uatSDpCr3gRRAMFJSaXaXjS5HoJJtG\nQGX0InLNmfiIEfXzf+YzguaoxX7+0AjiJVgIcWjmzaLmFN5OUiQt/eV5E1PnXi8t\nTRttQBVSK/eHiXgSgW7ZTaoteNTCLD0IX4eRnh8OsN4wUmSGiaqdZpwOdgyA8nTY\nKvi4Os7X1g8RvmurFPW9QaAiY4nxug9vKWNmLT+sjHLF+8fk1A/yO0+MKcc=\n-----END CERTIFICATE-----"

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/phicomm/speaker/net/d/a;->a(Lokhttp3/OkHttpClient$Builder;[Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/e;
    .locals 1

    .line 86
    new-instance v0, Lcom/phicomm/speaker/net/c/e;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/net/c/e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;
    .locals 1

    .line 90
    new-instance v0, Lcom/phicomm/speaker/net/c/d;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/net/c/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/b;
    .locals 1

    .line 94
    new-instance v0, Lcom/phicomm/speaker/net/c/b;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/net/c/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
