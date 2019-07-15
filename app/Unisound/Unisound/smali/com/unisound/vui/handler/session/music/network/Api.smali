.class public Lcom/unisound/vui/handler/session/music/network/Api;
.super Ljava/lang/Object;
.source "Api.java"


# static fields
.field private static final BASE_URL:Ljava/lang/String;

.field private static sRetrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->getAppServerUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/session/music/network/Api;->BASE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRetrofit()V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/unisound/vui/handler/session/music/network/Api;->sRetrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v1, Lcom/unisound/vui/handler/session/music/network/Api;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 25
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/session/music/network/Api;->sRetrofit:Lretrofit2/Retrofit;

    .line 28
    :cond_0
    return-void
.end method

.method public static getMusicApi()Lcom/unisound/vui/handler/session/music/network/MusicApi;
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/unisound/vui/handler/session/music/network/Api;->createRetrofit()V

    .line 19
    sget-object v0, Lcom/unisound/vui/handler/session/music/network/Api;->sRetrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/unisound/vui/handler/session/music/network/MusicApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/network/MusicApi;

    return-object v0
.end method
