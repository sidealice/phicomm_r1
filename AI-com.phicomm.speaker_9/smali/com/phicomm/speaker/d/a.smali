.class public Lcom/phicomm/speaker/d/a;
.super Ljava/lang/Object;
.source "MqttClientApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/d/a$c;,
        Lcom/phicomm/speaker/d/a$b;,
        Lcom/phicomm/speaker/d/a$a;,
        Lcom/phicomm/speaker/d/a$d;
    }
.end annotation


# static fields
.field private static a:Lcom/phicomm/speaker/d/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/d/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/phicomm/speaker/d/b;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/d/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/d/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/d/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/phicomm/speaker/d/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/d/a;->d:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/d/a;->f:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/d/a;->g:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/d/a;->h:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/phicomm/speaker/d/a;
    .locals 2

    .line 62
    sget-object v0, Lcom/phicomm/speaker/d/a;->a:Lcom/phicomm/speaker/d/a;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/phicomm/speaker/d/a;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/phicomm/speaker/d/a;->a:Lcom/phicomm/speaker/d/a;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/phicomm/speaker/d/a;

    invoke-direct {v1}, Lcom/phicomm/speaker/d/a;-><init>()V

    sput-object v1, Lcom/phicomm/speaker/d/a;->a:Lcom/phicomm/speaker/d/a;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/phicomm/speaker/d/a;->a:Lcom/phicomm/speaker/d/a;

    return-object v0
.end method

.method static synthetic a(Lcom/phicomm/speaker/d/a;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/d/a;->f:Ljava/util/List;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V
    .locals 7

    const-string v0, "MqttClientApi"

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish topic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-nez v0, :cond_0

    const-string p1, "MqttClientApi"

    const-string p2, "publish mqttAndroidClient == null!!"

    .line 320
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 323
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ""

    .line 327
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 329
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string p2, "MqttClientApi"

    .line 330
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "publish e = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/d/a;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/d/a;->f()V

    return-void
.end method

.method private b(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/f;)V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->d:Ljava/util/Map;

    new-instance v1, Lcom/phicomm/speaker/d/a/b;

    invoke-direct {v1, p1, p2, p3}, Lcom/phicomm/speaker/d/a/b;-><init>(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/f;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/d/a;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/d/a;->g:Ljava/util/List;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/d/a;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/d/a;->h:Ljava/util/List;

    return-object p0
.end method

.method private e()Lcom/phicomm/speaker/d/b;
    .locals 3

    .line 128
    new-instance v0, Lcom/phicomm/speaker/d/b;

    invoke-direct {v0}, Lcom/phicomm/speaker/d/b;-><init>()V

    .line 129
    invoke-virtual {v0}, Lcom/phicomm/speaker/d/b;->a()V

    const-string v1, "home.phicomm.com"

    .line 133
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/d/b;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/d/b;->a(Z)V

    const/16 v1, 0x22b3

    .line 135
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/d/b;->a(I)V

    const-string v1, "home.phicomm.com"

    const-string v2, "dev.home.phiwifi"

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-----BEGIN CERTIFICATE-----\nMIIE5TCCA82gAwIBAgIJAPnMYXnuD3tZMA0GCSqGSIb3DQEBCwUAMIGnMQswCQYD\nVQQGEwJDTjELMAkGA1UECBMCU0gxETAPBgNVBAcTCFNIQU5HSEFJMRQwEgYDVQQK\nEwtQaGljb21tIE9SRzEQMA4GA1UECxMHUEhJQ09NTTEXMBUGA1UEAxMOUGhpY29t\nbSBPUkcgQ0ExEDAOBgNVBCkTB0Vhc3lSU0ExJTAjBgkqhkiG9w0BCQEWFm1lQGxv\nYWNsaG9zdC5sb2NhbGhvc3QwHhcNMTcwOTI4MDM0MzU3WhcNMjcwOTI2MDM0MzU3\nWjCBpzELMAkGA1UEBhMCQ04xCzAJBgNVBAgTAlNIMREwDwYDVQQHEwhTSEFOR0hB\nSTEUMBIGA1UEChMLUGhpY29tbSBPUkcxEDAOBgNVBAsTB1BISUNPTU0xFzAVBgNV\nBAMTDlBoaWNvbW0gT1JHIENBMRAwDgYDVQQpEwdFYXN5UlNBMSUwIwYJKoZIhvcN\nAQkBFhZtZUBsb2FjbGhvc3QubG9jYWxob3N0MIIBIjANBgkqhkiG9w0BAQEFAAOC\nAQ8AMIIBCgKCAQEAuJjtLZJ+I6Cyy1NqsSMDSCJWiRPFJ1WdVjTDN8PwDdjAmrLk\nCOWr+M53faZuBm61f7AQzg0JKIKW+2Qc2oI/CRJ1vdskLie/T0cGKEVagUisWo0A\n2SQQz7SMwaqUHRsWBbxjIiD6A5J+dgdRmLG+lN9SnUlABGsje2JZ8Ft7mz7q3m8f\nA1TZeI5xg3M38GGYYBKXqF2ytbI5QGIARiGJBLxMbvbRnYN2IwtcrtUjgb1FltP2\ngozDqjmessnFZGhBtDmYp9Uono5+FiyL+rlmzNJIKexLgF8KK7lZwL4gUKa4jiOw\n9rZ1EGbmjnwjXQ1gE12355d8pI1vOLzK1GS0gwIDAQABo4IBEDCCAQwwHQYDVR0O\nBBYEFL+mqz5m8E0Zy2VnzxD5YPRsDLefMIHcBgNVHSMEgdQwgdGAFL+mqz5m8E0Z\ny2VnzxD5YPRsDLefoYGtpIGqMIGnMQswCQYDVQQGEwJDTjELMAkGA1UECBMCU0gx\nETAPBgNVBAcTCFNIQU5HSEFJMRQwEgYDVQQKEwtQaGljb21tIE9SRzEQMA4GA1UE\nCxMHUEhJQ09NTTEXMBUGA1UEAxMOUGhpY29tbSBPUkcgQ0ExEDAOBgNVBCkTB0Vh\nc3lSU0ExJTAjBgkqhkiG9w0BCQEWFm1lQGxvYWNsaG9zdC5sb2NhbGhvc3SCCQD5\nzGF57g97WTAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBCwUAA4IBAQBRmX2F8SeE\ne/sjSfJRNwmL57JjCyqBVATm7jwTvk/1Ywb2t3ecXIoOkP1QAo401HjrhbJxCHB4\ngi6nRNiKIpUix2gnvGPfmsxxIt3dS7e0+q51TCpW39ZwbwMZH1YrP2PKGm9PW8ME\nWjrg5bg5Pb1jNawEaPpC28i7c6jYDEvWGHyx8/s1zfXtEKPPQvKpbo2bfzOwL41X\nYyjDWd4Bz+YG4CxxM+8io7vA4m5paEH7KphznuD7fW7Vf2C0ikfx7suuTiRPOY+/\nvI665FOSz0RrdScfPaxtcDNyjDo+yPR/hxhFmDJaP6XwlUnfoaAtdvRqsr7SVs1K\nyddYjI/9VpW1\n-----END CERTIFICATE-----"

    goto :goto_0

    :cond_0
    const-string v1, "-----BEGIN CERTIFICATE-----\nMIIHAzCCBeugAwIBAgIQdSfD98MlqmJlqGAwP0QbRTANBgkqhkiG9w0BAQsFADB+\nMQswCQYDVQQGEwJVUzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24xHzAd\nBgNVBAsTFlN5bWFudGVjIFRydXN0IE5ldHdvcmsxLzAtBgNVBAMTJlN5bWFudGVj\nIENsYXNzIDMgU2VjdXJlIFNlcnZlciBDQSAtIEc0MB4XDTE3MDczMTAwMDAwMFoX\nDTIwMDczMDIzNTk1OVowgZAxCzAJBgNVBAYTAkNOMQ8wDQYDVQQIDAbkuIrmtbcx\nDzANBgNVBAcMBuS4iua1tzEzMDEGA1UECgwq5LiK5rW35paQ6K6v5pWw5o2u6YCa\n5L+h5oqA5pyv5pyJ6ZmQ5YWs5Y+4MRIwEAYDVQQLDAnmioDmnK/pg6gxFjAUBgNV\nBAMMDSoucGhpY29tbS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB\nAQCpxOcJiYn7ug7G3Hq/h8cdUgg79AsNd+mqsGYk46EOj4JSQp43YBXdI3K7ST+s\nc3Im9uk5HixTEVDNhNaDbz5EFN93NnGCYSI3rXzdKQ/8dEyHxWfkvBpyTVGLmT9W\nRaXdUYsFojD4JbvCYW2SBXSLI+vNXRH5chvlMDZq6WoX8oP4JhOnqnrXMBuYQkXC\ncni1EwBPrabHFbtf78Q3bp7ea2bMkz+NpKB/V79tCOrlovamtR0n4Z4PqQXM3f4C\nI3afdVV+nfopVQIyFDKf45vJhFD7r4IPy3mFyuX49ikax3KwuaBwBnr2vKJZpI49\n3YEdAvMYqgtLWMoJprjorrk1AgMBAAGjggNoMIIDZDAlBgNVHREEHjAcgg0qLnBo\naWNvbW0uY29tggtwaGljb21tLmNvbTAJBgNVHRMEAjAAMA4GA1UdDwEB/wQEAwIF\noDArBgNVHR8EJDAiMCCgHqAchhpodHRwOi8vc3Muc3ltY2IuY29tL3NzLmNybDBh\nBgNVHSAEWjBYMFYGBmeBDAECAjBMMCMGCCsGAQUFBwIBFhdodHRwczovL2Quc3lt\nY2IuY29tL2NwczAlBggrBgEFBQcCAjAZDBdodHRwczovL2Quc3ltY2IuY29tL3Jw\nYTAdBgNVHSUEFjAUBggrBgEFBQcDAQYIKwYBBQUHAwIwHwYDVR0jBBgwFoAUX2DP\nYZBV34RDFIpgKrL1evRDGO8wVwYIKwYBBQUHAQEESzBJMB8GCCsGAQUFBzABhhNo\ndHRwOi8vc3Muc3ltY2QuY29tMCYGCCsGAQUFBzAChhpodHRwOi8vc3Muc3ltY2Iu\nY29tL3NzLmNydDCCAfUGCisGAQQB1nkCBAIEggHlBIIB4QHfAHYA3esdK3oNT6Yg\ni4GtgWhwfi6OnQHVXIiNPRHEzbbsvswAAAFdlmPatAAABAMARzBFAiEAy3NnACn7\nLnSxx+nIy6UIpMnYBuOVva6DzQkSp+baaN8CIGr4pIr1gEV1Pe9J4Bpq3l1cL2SX\ncfzb3wacBaTNsM8PAHYApLkJkLQYWBSHuxOizGdwCjw1mAT5G9+443fNDsgN3BAA\nAAFdlmPa2QAABAMARzBFAiEA7oCAe2Dl/3dTFDx8n/GfadK+CdEfeO1dYOrTOabn\n7w4CIBdurjzxOGmOpTK3c/vg6E1/IHWU6+nOGiLp60+JlxlVAHUA7ku9t3XOYLrh\nQmkfq+GeZqMPfl+wctiDAMR7iXqo/csAAAFdlmPa7wAABAMARjBEAiB0aP8NaB+9\nTYBj6kItWwpf/jwoLVnq5yDPPWUnSkPpnQIgPE3MxU81lQwyPLr2WwrKswb8mVuc\nAoHFE+3tyGyYQ18AdgC8eOHfxfY8aEZJM02hD6FfCXlpIAnAgbTz9pF/Ptm4pQAA\nAV2WY9unAAAEAwBHMEUCIBPMbDD1DQScvijRThaz3t0MLDD0/eof3AVV2FkgCSir\nAiEA17x+7rFE0gdjl9lxcTaFogJvLnea1bxzbgC68SjDWI4wDQYJKoZIhvcNAQEL\nBQADggEBAFULXBM5aSIMyi1t/rz0iAnB7Ti0a1ZpVylo3E9MSB/SXyBftbvk6Gg1\neJdDR/JxtMYfQn5XEwRDoNb19srERnWpCyMxtlvXJqMfUmjSCwYlk1ZsE6X8PAQP\nEIAaYPaRuzjPFIeqT96kT3cm0FdPsy5MdzKLYKGoaMB6LiFgpRaO8NIbrLfNs4T1\nKvGfgBC2NH8rFWTsvuA8Y7qr56w6nNb+ThqW7WykFipu6z1J4M8XpvgVw7LJHkQd\n4yAkGvK0f/i+vKM2XGA3tdteEKLjHWusfPKzCTk/EKUsoPRkTXFNxIOXx3GIoisP\nJB/lOiE4wvm4M+NRBAjf/QeMQqkFX5Y=\n-----END CERTIFICATE-----\n-----BEGIN CERTIFICATE-----\nMIIFODCCBCCgAwIBAgIQUT+5dDhwtzRAQY0wkwaZ/zANBgkqhkiG9w0BAQsFADCB\nyjELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQL\nExZWZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTowOAYDVQQLEzEoYykgMjAwNiBWZXJp\nU2lnbiwgSW5jLiAtIEZvciBhdXRob3JpemVkIHVzZSBvbmx5MUUwQwYDVQQDEzxW\nZXJpU2lnbiBDbGFzcyAzIFB1YmxpYyBQcmltYXJ5IENlcnRpZmljYXRpb24gQXV0\naG9yaXR5IC0gRzUwHhcNMTMxMDMxMDAwMDAwWhcNMjMxMDMwMjM1OTU5WjB+MQsw\nCQYDVQQGEwJVUzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24xHzAdBgNV\nBAsTFlN5bWFudGVjIFRydXN0IE5ldHdvcmsxLzAtBgNVBAMTJlN5bWFudGVjIENs\nYXNzIDMgU2VjdXJlIFNlcnZlciBDQSAtIEc0MIIBIjANBgkqhkiG9w0BAQEFAAOC\nAQ8AMIIBCgKCAQEAstgFyhx0LbUXVjnFSlIJluhL2AzxaJ+aQihiw6UwU35VEYJb\nA3oNL+F5BMm0lncZgQGUWfm893qZJ4Itt4PdWid/sgN6nFMl6UgfRk/InSn4vnlW\n9vf92Tpo2otLgjNBEsPIPMzWlnqEIRoiBAMnF4scaGGTDw5RgDMdtLXO637QYqzu\ns3sBdO9pNevK1T2p7peYyo2qRA4lmUoVlqTObQJUHypqJuIGOmNIrLRM0XWTUP8T\nL9ba4cYY9Z/JJV3zADreJk20KQnNDz0jbxZKgRb78oMQw7jW2FUyPfG9D72MUpVK\nFpd6UiFjdS8W+cRmvvW1Cdj/JwDNRHxvSz+w9wIDAQABo4IBYzCCAV8wEgYDVR0T\nAQH/BAgwBgEB/wIBADAwBgNVHR8EKTAnMCWgI6Ahhh9odHRwOi8vczEuc3ltY2Iu\nY29tL3BjYTMtZzUuY3JsMA4GA1UdDwEB/wQEAwIBBjAvBggrBgEFBQcBAQQjMCEw\nHwYIKwYBBQUHMAGGE2h0dHA6Ly9zMi5zeW1jYi5jb20wawYDVR0gBGQwYjBgBgpg\nhkgBhvhFAQc2MFIwJgYIKwYBBQUHAgEWGmh0dHA6Ly93d3cuc3ltYXV0aC5jb20v\nY3BzMCgGCCsGAQUFBwICMBwaGmh0dHA6Ly93d3cuc3ltYXV0aC5jb20vcnBhMCkG\nA1UdEQQiMCCkHjAcMRowGAYDVQQDExFTeW1hbnRlY1BLSS0xLTUzNDAdBgNVHQ4E\nFgQUX2DPYZBV34RDFIpgKrL1evRDGO8wHwYDVR0jBBgwFoAUf9Nlp8Ld7LvwMAnz\nQzn6Aq8zMTMwDQYJKoZIhvcNAQELBQADggEBAF6UVkndji1l9cE2UbYD49qecxny\nH1mrWH5sJgUs+oHXXCMXIiw3k/eG7IXmsKP9H+IyqEVv4dn7ua/ScKAyQmW/hP4W\nKo8/xabWo5N9Q+l0IZE1KPRj6S7t9/Vcf0uatSDpCr3gRRAMFJSaXaXjS5HoJJtG\nQGX0InLNmfiIEfXzf+YzguaoxX7+0AjiJVgIcWjmzaLmFN5OUiQt/eV5E1PnXi8t\nTRttQBVSK/eHiXgSgW7ZTaoteNTCLD0IX4eRnh8OsN4wUmSGiaqdZpwOdgyA8nTY\nKvi4Os7X1g8RvmurFPW9QaAiY4nxug9vKWNmLT+sjHLF+8fk1A/yO0+MKcc=\n-----END CERTIFICATE-----"

    .line 138
    :goto_0
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/d/b;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method private f()V
    .locals 4

    const-string v0, "MqttClientApi"

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribeWhenConnect subscriptions ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/d/a;->d:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->e:Lcom/phicomm/speaker/d/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/d/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/d/a/b;

    .line 491
    invoke-virtual {v1}, Lcom/phicomm/speaker/d/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/phicomm/speaker/d/a/b;->b()I

    move-result v3

    invoke-virtual {v1}, Lcom/phicomm/speaker/d/a/b;->c()Lorg/eclipse/paho/client/mqttv3/f;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/phicomm/speaker/d/a;->a(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/phicomm/speaker/d/b;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MqttClientApi"

    const-string v1, "initClient"

    .line 154
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/phicomm/speaker/d/a;->b:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/phicomm/speaker/d/a;->e:Lcom/phicomm/speaker/d/b;

    .line 158
    new-instance p1, Lorg/eclipse/paho/android/service/MqttAndroidClient;

    iget-object p2, p0, Lcom/phicomm/speaker/d/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->e:Lcom/phicomm/speaker/d/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/d/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/b/a;

    invoke-direct {v1}, Lorg/eclipse/paho/client/mqttv3/b/a;-><init>()V

    invoke-direct {p1, p2, v0, p3, v1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/m;)V

    iput-object p1, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 159
    new-instance p1, Lcom/phicomm/speaker/d/a$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/phicomm/speaker/d/a$d;-><init>(Lcom/phicomm/speaker/d/a;Lcom/phicomm/speaker/d/a$1;)V

    iput-object p1, p0, Lcom/phicomm/speaker/d/a;->i:Lcom/phicomm/speaker/d/a$d;

    .line 160
    iget-object p1, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    iget-object p2, p0, Lcom/phicomm/speaker/d/a;->i:Lcom/phicomm/speaker/d/a$d;

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/client/mqttv3/k;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/phicomm/speaker/d/a;->e()Lcom/phicomm/speaker/d/b;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/phicomm/speaker/d/a;->a(Landroid/content/Context;Lcom/phicomm/speaker/d/b;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/phicomm/speaker/d/a$a;)V
    .locals 1

    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 451
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/phicomm/speaker/d/a$b;)V
    .locals 1

    monitor-enter p0

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 463
    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V
    .locals 3

    const-string v0, "MqttClientApi"

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect userContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    iget-object v1, p0, Lcom/phicomm/speaker/d/a;->e:Lcom/phicomm/speaker/d/b;

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/client/mqttv3/n;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 216
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string p2, "MqttClientApi"

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 340
    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/phicomm/speaker/d/a;->a(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V
    .locals 3

    const-string v0, "MqttClientApi"

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe topic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " qos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-nez v0, :cond_0

    const-string p1, "MqttClientApi"

    const-string p2, "subscribe mqttAndroidClient == null!!"

    .line 388
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 392
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;

    const/4 p3, 0x0

    .line 393
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/d/a;->b(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 395
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string p2, "MqttClientApi"

    .line 396
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "subscribe e = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/f;)V
    .locals 3

    const-string v0, "MqttClientApi"

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe topic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " qos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " messageListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-nez v0, :cond_0

    const-string p1, "MqttClientApi"

    const-string p2, "subscribe mqttAndroidClient == null!!"

    .line 365
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 369
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/f;)Lorg/eclipse/paho/client/mqttv3/g;

    .line 370
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/d/a;->b(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 372
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string p2, "MqttClientApi"

    .line 373
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "subscribe e = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-nez v0, :cond_0

    const-string p1, "MqttClientApi"

    const-string p2, "unSubscribe mqttAndroidClient == null!!"

    .line 418
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 422
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;

    .line 423
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/d/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 425
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string p2, "MqttClientApi"

    .line 426
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unSubscribe e = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 281
    invoke-direct/range {v0 .. v6}, Lcom/phicomm/speaker/d/a;->a(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 291
    invoke-direct/range {v0 .. v6}, Lcom/phicomm/speaker/d/a;->a(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V

    return-void
.end method

.method public declared-synchronized b(Lcom/phicomm/speaker/d/a$a;)V
    .locals 1

    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 457
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/phicomm/speaker/d/a$b;)V
    .locals 1

    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 469
    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-nez v0, :cond_0

    const-string p1, "MqttClientApi"

    const-string p2, "disConnect mqttAndroidClient == null!!"

    .line 238
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string p2, "MqttClientApi"

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disConnect e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0, p1, v0, v0}, Lcom/phicomm/speaker/d/a;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->e:Lcom/phicomm/speaker/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->i:Lcom/phicomm/speaker/d/a$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->d()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/d/a;->c:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a()Z

    move-result v0

    return v0
.end method
